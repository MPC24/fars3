# Fatal Accident Data Processor ![](https://travis-ci.org/MPC24/fars3.svg?branch=master)

##Package Description

This is a simple package composed of five functions that work specifically with [Fatality Analysis Reporting System](http://www-fars.nhtsa.dot.gov/).. You load, summarize and map data for fatel accidents in the US for years 2013-2015. 


##Function Instructions for Package

library(fars3)    
library(dplyr)   
library(maps)   

###make_filename

This is a function that takes a year parameter and creates a filename for
Fatality Analysis Reporting System data. 

Example:

filename <- make_filename(2013)


###fars_read

This function returns a tibble dataframe from a CSV file.
If the file path is wrong or the file does not exist then an error message
will return. It takes one argument: 'filename'.

Example:

filename <- make_filename(2013)

fars2013 <- fars_read(filename)


###fars_read_years

This function returns a list of tibble dataframes containing
the month and year varibles from the accident files from the
Fatality Analysis Reporting System. The dataframes are compliled
based on the years specified in a vector from the 'years' parameter.
If only one year is provided that a simple tibble dataframe is returned.

Example:

years <- c(2013, 2014)

fars1314 <- fars_read_years(years)


###fars_summarize_years

This function returns a dataframe that summarizes the three
dataframe objects from the list created by the 'fars_read_years' function.
The dataframe contains four columns and twelve rows. The 'MONTH' column
has the month number and the three year columns contain the number of
fatalities in the corresponding month.

Example:

years <- c(2013, 2014, 2015)

fars1315 <- fars_summarize_years(years)


###fars_map_state

This function returns a map showing the location of accidents in
a single state from a single year based on data from the the Fatality
Analysis Reporting System.

fars_map <- fars_map_state(10, 2013)
