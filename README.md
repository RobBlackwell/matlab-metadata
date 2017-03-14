# matlab-metadata

Is there an easy way to generate metadata files from MATLAB?

[1] specifies a number of standard attributes for acoustics and uses
global attributes in NetCDF files. It doesn't preclude other formats like XML,
or presumably, JSON.

example.m creates some example metadata according to [1]

netcdfmetadata.m allows that data to be written as NetCDF

# References

1. [A metadata convention for processed acoustic data from active acoustic systems, Version 1.00, ICES WGFAST Topic Group, TG-AcMeta](https://www.ices.dk/sites/pub/Publication%20Reports/ICES%20Survey%20Protocols%20(SISP)/SISP-3%20A%20metadata%20convention%20for%20processed%20acoustic%20data%20from%20active%20acoustic%20systems.pdf)
