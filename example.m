% Experimental example

% The metadata is essentially a list of attributes with well known
% names and values, so let's model that as a Map

% Here is some incomplete, sample data:

metadata = containers.Map();
metadata('mission_name') = 'JR209';
metadata('mission_abstract') = 'Rothera to Rothera 2009, bentho-pelagic coupling';
metadata('mission_start_date') = '20091201T120000Z';
metadata('mission_end_date') = '20091211T120000Z';
metadata('principal_investigator') = 'Dr Sophie Fielding';
metadata('principal_investigator_email') = 'sof@bas.ac.uk';
metadata('institution') = 'British Antarctic Survey';

metadata('data_centre') = 'The UK Polar Data Centre';
metadata('data_centre_email') = 'polardatacentre@bas.ac.uk';
metadata('mission_id') = 'JR209';
metadata('mission_platform') = 'Ship, research';
metadata('creator') = 'British Antarctic Survey';

metadata('cruise_name') = 'JR209';
metadata('cruise_description') = 'Rothera to Rothera 2009, bentho-pelagic coupling';

metadata('ship_name') = 'RRS James Clark Ross';

% NB Lots of other mandatory fields missing from this sample

% Output to NetCDF

filename = 'jr209.nc';
netcdfmetadata(filename, metadata);

% Output to JSON - NB Requires a Recent version of MATLAB

filename = 'jr209.json';
fid = fopen(filename,'wt');
fprintf(fid, '%s', jsonencode(metadata));
fclose(fid);
