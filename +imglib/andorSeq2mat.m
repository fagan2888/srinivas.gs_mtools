% convert image sequence to a matrix
% converts an image sequence generated by micro manager running on a andor camera into a nice matrix we can work with, together with metadata scraped from the .txt file generated by micro manager
% this function acts recursively on all folders -- just start it somewhere in a folder containing all your images and it will figure it all out. 

function [] = andorSeq2mat(path_name,t_end)


if nargin == 0
	error('No arguments specified')
end

if nargin < 2 
	error('Not enough arguments. You need to specify the path_name and t_end')
end

if isempty(varargin{1})
	path_name = pwd;
end

assert(exist(path_name,'file')==7,'Input argument should be a valid path')
if ~strcmp(path_name(end),filesep)
	path_name = [path_name filesep];
end


all_folders = getAllFolders(path_name);

for ai = 1:length(all_folders)

	this_folder = all_folders{ai};
	if ~strcmp(this_folder(end),filesep)
		this_folder = [this_folder filesep];
	end

	allfiles = dir(this_folder);

	% figure out how many image files there are.
	n_images = 0;
	for i = 1:length(allfiles)
		if ~strcmp(allfiles(i).name(1),'.')
			if any(strfind(allfiles(i).name,'.tif'))
				n_images = n_images + 1;
			end
		end
	end

	if n_images < 2
		continue
	end

	disp('Working on:')
	disp(this_folder)

	c = 1;

	for i = 1:length(allfiles)
		if any(strfind(allfiles(i).name,'tif')) && ~strcmp(allfiles(i).name(1),'.')
			temp  = (imread([this_folder allfiles(i).name]));
			if ~exist('images','var')
				images = (0*repmat(temp,1,1,n_images));
			end
			images(:,:,c) = temp;

			c = c + 1;
		elseif strcmp(allfiles(i).name,'metadata.txt') && ~strcmp(allfiles(i).name(1),'.')
			txt = fileread([this_folder allfiles(i).name]);
			[andor_elapsed_time,elapsed_time,absolute_time] = metadata2timestamps(txt);
		end
	end

	disp('Saving...')

	% figure out the timing
	temp = diff(squeeze(sum(sum(images))));
	[~,t_on] = max(temp);
	[~,t_off] = min(temp);

	images = images(:,:,t_on+1:t_off);

	time = linspace(0,t_end,size(images,3));

	% save all of this in a unique file name based on the hash of the metadata
	a = strfind(txt,'Prefix'); a = a(1);
	z = strfind(txt(a+10:a+1e3),'"');
	z = z(1);
	use_name = txt(a+10:a+z+8);
	if size(images,3) > 1
		savefast([path_name 'video_' use_name '.mat'],'images','andor_elapsed_time','elapsed_time','absolute_time','time')
	else
		disp('Something went wrong; acquisition probably aborted')
	end


end

