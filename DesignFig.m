% DesignFig.m
% interactively design a figure with multiple subplots and get DesignFig to make the code for you
% 
% created by Srinivas Gorur-Shandilya at 10:06 , 28 January 2015. Contact me at http://srinivas.gs/contact/
% 
% This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. 
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

function [] = DesignFig()

allrect = struct;	
nplots = 0;
ss=get(0,'screensize');
ss = ss(3:4);
default_figure_margin = 100;

f =figure('Toolbar','none','Menubar','none','Name','Figure Designer','NumberTitle','off','Position',[default_figure_margin default_figure_margin ss(1)-2*default_figure_margin ss(2)-2*default_figure_margin]); hold on
% get the figure position, because matlab always screws it up, especially if screen sizes are funky
figure_position = get(f,'Position');
grid_spacing = figure_position(4)/10;

set(gca,'Position',[0 0 1 .95],'box','on','XLim',[0 figure_position(3)],'YLim',[0 figure_position(4)],'YMinorGrid','on','XMinorGrid','on','XTick',[0:grid_spacing:figure_position(3)],'YTick',[0:grid_spacing:figure_position(4)]);

AddSubplotControl = uicontrol(f,'Units','normalized','Position',[.01 .96 .1 .03],'Style','pushbutton','Enable','on','String','Add plot','FontSize',10,'Callback',@AddRect);

SnapControl = uicontrol(f,'Units','normalized','Position',[.26 .96 .1 .03],'Style','pushbutton','Enable','on','String','Snap','FontSize',10,'Callback',@Snap);

ToggleGridControl = uicontrol(f,'Units','normalized','Position',[.13 .96 .1 .03],'Style','pushbutton','Enable','on','String','Toggle Grid','FontSize',10,'Callback',@ToggleGrid);

PositionDisplay = uicontrol(f,'Units','normalized','Position',[.39 .955 .1 .03],'Style','text','Enable','on','String','','FontSize',10);

function [] = ToggleGrid(~,~)
	if strcmp(get(gca,'YMinorGrid'),'off')
		set(gca,'YMinorGrid','on','XMinorGrid','on')
	else
		set(gca,'YMinorGrid','off','XMinorGrid','off')
	end
end

function [] = AddRect(~,~)
	nplots = nplots+1;
	allrect(nplots).h = imrect;
	addNewPositionCallback(allrect(nplots).h,@UpdatePositionDisplay);
end

function [] = Snap(~,~)
	for i = 1:length(allrect)
		this_pos = getPosition(allrect(i).h);
		grid_minor_spacing = .25;
		setPosition(allrect(i).h,round(this_pos/(grid_minor_spacing*grid_spacing))*(grid_minor_spacing*grid_spacing));
	end
end

function [] = UpdatePositionDisplay(src,~)
	set(PositionDisplay,'String',mat2str(round(src)));
end

end