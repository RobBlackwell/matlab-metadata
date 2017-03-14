function x = netcdfmetadata(filename, dictionary)

% Writes dictionary to filename in NetCDF format.
% Dictionary is a containers.Map()

    ncid = netcdf.create(filename,'CLOBBER');
    varid = netcdf.getConstant('GLOBAL');
 
    k = keys(dictionary) ;
    val = values(dictionary) ;
	for i = 1:length(dictionary)
        netcdf.putAtt(ncid,varid,k{i},val{i});
	end

    netcdf.close(ncid);
end

