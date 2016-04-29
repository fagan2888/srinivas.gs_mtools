% prettyFig.m
% makes current figure prettier, and overrides MATLAB's horrible defaults. 
% 
% usage:
% prettyFig; % will automatically make the current figure prettier
% 
% you can tweak individual options if you like. for example:
% prettyFig('options.lw',4) % set line width of axes to 4 
% prettyFig('tick_length',.005) % change the tick length
% 
% to see all the options, you can 
% options = prettyFig
% to get a structure with all the options
% you can also pass this options structure back in:
%
% prettyFig(options)
%
% created by Srinivas Gorur-Shandilya at 10:20 , 09 April 2014. Contact me at http://srinivas.gs/contact/
% 
% This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. 
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

function [varargout] = prettyFig(varargin)

warning off


% options and defaults
options.lw = 2; % line width of graphical elements
options.plw = 2; % plot line width
options.fs = 18; % font size
options.EqualiseY = false;
options.EqualiseX = false;
options.FixLogX = false;
options.FixLogY = false;
options.plot_buffer = .1; % how much should you zoom out of the data to show extremes?
options.tick_length = 0.01; 

if nargout && ~nargin 
	varargout{1} = options;
	return
end

% validate and accept options
if iseven(length(varargin))
	for ii = 1:2:length(varargin)-1
	temp = varargin{ii};
    if ischar(temp)
    	if ~any(find(strcmp(temp,fieldnames(options))))
    		disp(['Unknown option: ' temp])
    		disp('The allowed options are:')
    		disp(fieldnames(options))
    		error('UNKNOWN OPTION')
    	else
    		options = setfield(options,temp,varargin{ii+1});
    	end
    end
end
elseif isstruct(varargin{1})
	% should be OK...
	options = varargin{1};
else
	error('Inputs need to be name value pairs')
end


% get handle to all plots in current figure
axesHandles = findall(gcf,'type','axes');

longest_axes_length = NaN(length(axesHandles),1);

% for each axis
for i = 1:length(axesHandles)
	% get the old limits
	oldx = get(axesHandles(i),'XLim');
	oldy = get(axesHandles(i),'YLim');

	% set line width and font size
	set(axesHandles(i),'FontSize',options.fs,'LineWidth',options.lw)

	% rescale the X and Y limits, but only if the user has not manually specified something
	ph = findall(axesHandles(i),'type','line');
	xlimits = NaN(2,length(ph));
	ylimits = NaN(2,length(ph));
	for j = 1:length(ph)
		temp=get(ph(j),'XData');
		xlimits(1,j) = min(temp); xlimits(2,j) = max(temp); clear temp
		temp=get(ph(j),'YData');
		ylimits(1,j) = min(temp); ylimits(2,j) = max(temp); clear temp
	end
	clear j
	minx=min(xlimits(1,:)); miny = min(ylimits(1,:)); 
	maxx=max(xlimits(2,:)); maxy = max(ylimits(2,:)); 

	if ~isempty(minx) && ~isempty(maxx) && ~isempty(nonzeros([maxy miny]))
		rx = abs(minx-maxx); ry = abs(miny-maxy);
		if rx == 0
			rx = 1; minx = minx - 1; maxx = maxx + 1;
		end
		if ry == 0
			ry = 1; miny = miny - 1; maxy = maxy + 1;
		end
		
		if strcmp(get(axesHandles(i),'XScale'),'log')
			if strcmp(get(axesHandles(i),'XLimMode'),'auto')
				set(axesHandles(i),'XLim',oldx)
			end
		else
			if strcmp(get(axesHandles(i),'XLimMode'),'auto')
				set(axesHandles(i),'XLim',[minx-options.plot_buffer*rx maxx+options.plot_buffer*rx])
			end
		end

		if strcmp(get(axesHandles(i),'YScale'),'log')
			if strcmp(get(axesHandles(i),'YLimMode'),'auto')
				set(axesHandles(i),'YLim',oldy)
			end
		else
			if strcmp(get(axesHandles(i),'YLimMode'),'auto')
				try
					set(axesHandles(i),'YLim',[miny-options.plot_buffer*ry maxy+options.plot_buffer*ry])
				catch
				end
			end
		end
	end

	% turn the minor ticks on
	set(axesHandles(i),'XMinorTick','on','YMinorTick','on')	


	% there should be more than 1 Xtick when we have a log scale
	if  length(get(axesHandles(i),'XTick')) < 2 && strcmp(get(axesHandles(i),'XScale'),'log') && options.FixLogX
		c = get(axesHandles(i),'Children');
		minlog = Inf; maxlog = -Inf;
		for k = 1:length(c)
			minlog = min([ min(nonzeros(abs(get(c(k),'XData')))) minlog]);
			maxlog = max([ max(nonzeros(abs(get(c(k),'XData')))) maxlog]);
		end
		a = floor(log10(minlog));
		z = ceil(log10(maxlog));

		set(axesHandles(i),'XTick',10.^(a:z));
		
	else
	end

	% there should be more than 1 Ytick when we have a log scale
	if  length(get(axesHandles(i),'YTick')) < 2 && strcmp(get(axesHandles(i),'YScale'),'log') && options.FixLogY
		c = get(axesHandles(i),'Children');
		minlog = Inf; maxlog = -Inf;
		for k = 1:length(c)
			minlog = min([ min(nonzeros(abs(get(c(k),'YData')))) minlog]);
			maxlog = max([ max(nonzeros(abs(get(c(k),'YData')))) maxlog]);
		end
		a = floor(log10(minlog));
		z = ceil(log10(maxlog));

		set(axesHandles(i),'YTick',10.^(a:z));
		
	else
	end



	% find all errorbar plots and set those line widths appropriately
	ph=get(axesHandles(i),'Children');
	for j = 1:length(ph)
		try
			% only change the Line Width if default
			if ph(j).LineWidth == .5
				set(ph(j),'LineWidth',options.plw);
			end
		catch
			% probably an image or something.
			% so reverse tick direction
			set(gca,'TickDir','out')
			box on
		end
	end

	% find the length of the longest axis
	pos_temp = get(axesHandles(i),'Position');
	longest_axes_length(i) = max(pos_temp(3:4));

end
clear i

% set all tick marks to be the same absolute length
tl = max(longest_axes_length)*options.tick_length;
for i = 1:length(axesHandles)
	tl_temp = get(axesHandles(i),'TickLength');
	tl_temp(1) =  tl/longest_axes_length(i);
	set(axesHandles(i),'TickLength',tl_temp);

end



% find all line plots and get all their X and Y extents
ph = findall(axesHandles,'type','line');
for j = 1:length(ph)
	if ph(j).LineWidth == .5
		set(ph(j),'LineWidth',options.plw)
	end
end
clear j



% find all titles
th = findall(axesHandles,'type','text');
for j = 1:length(th)
	set(th(j),'FontSize',options.fs)
end
clear j

% should we equalise axes?
if options.EqualiseY 
	ymin = Inf;
	ymax = -Inf;
	for i = 1:length(axesHandles)
		yl = get(axesHandles(i),'YLim');
		ymin = min([ymin yl]);
		ymax = max([ymax yl]);
	end
	clear i

	for i = 1:length(axesHandles)
		set(axesHandles(i),'YLim',[ymin ymax])
	end
	clear i

end

if options.EqualiseX
	xmin = Inf;
	xmax = -Inf;
	for i = 1:length(axesHandles)
		xl = get(axesHandles(i),'XLim');
		xmin = min([xmin xl]);
		xmax = max([xmax xl]);
	end
	clear i

	for i = 1:length(axesHandles)
		set(axesHandles(i),'XLim',[xmin xmax])
	end
	clear i

end

% turn on minor ticks
for i = 1:length(axesHandles)
	set(axesHandles(i),'XMinorTick','on');
end

% flip tick direction
for i = 1:length(axesHandles)
	set(axesHandles(i),'TickDir','out');
end

set(gcf,'Color','w')

warning on