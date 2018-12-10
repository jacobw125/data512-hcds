# Modeling legal immigration to the United States
**Jacob Warwick**

This work was completed for [DATA 512: Human Centered Data Science (2018)](https://wiki.communitydata.cc/Human_Centered_Data_Science_(Fall_2018)).

## Summary
In this report, I examine data from the PERM and H1B legal immigration programs to analyze the kinds of jobs being approved for foriegn workers.

## Data
* H1B and PERM data are sourced from the United States Department of Labor Employment & Training Administration, Office of Foreign Labor Certification. The office releaes these requests on a quarterly basis, "for the purpose of performing in-depth longitudinal research and analysis."  The data were originally downloaded from https://www.foreignlaborcert.doleta.gov/performancedata.cfm in late November 2018. All downloads have been preserved in their original form under the data_sources/ folder in this repo. This data does not have a license, but is released under open terms for general purpose research, according to the source website, so I am considering it to be open and freely licensed.

* NAICS Data are sourced from the U.S. Census Bureau at https://www.census.gov/eos/www/naics/downloadables/downloadables.html. This data also does not have a license, but is part of a public classification system, and released from a government entity for public consumption. It seems fair to assume it is also available for open use.


## Files
* See LICENSE.txt for the license information for this work
* data_sources/ contains the original data downloads and two data dictionaries fro the USDOL web site.
* extracted_data/ contains the same data, cleaned up and stored in compressed, open formats
* 01_extract.R contains some basic data extractinon and cleaning code which is referenced in the report
* immigration_modeling.Rmd is the my final project report. I am also checking in a compiled version, immigration_modeling.nb.html, which can be viewed in any web browser.

Documentation and license information for your data, etc. (same basic reqs as A1 and A2)
b.
Hyperlinks to ALL relevant resources (TOS, API documentation, license deeds, etc)
c.
A short summary of your study that describes what you did, and what you found. 
d.
A link to the course wiki site.