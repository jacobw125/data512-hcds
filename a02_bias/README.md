# A2: Evaluating Bias in Data
#### Jacob Warwick, October 2018

## Purpose
This analysis evaluates potential geo-political bias among English Wikipedia pages. 
We will use pages about political figures in various countries, along with the
[ORES API](https://www.mediawiki.org/wiki/ORES), which allows us to rank page quality, and 
international population data, to assess whether there are a disproportionately large number of
high- and low-quality Wikipedia pages about political figures using population as a baseline.

#### Discussion
Prior to performing this analysis, I considered the many other factors that may influence the number of pages about 
political figures on English Wikipedia, including:

* **Language**: English Wikipedia may be biased towards representing English-speaking countries
* **Size of government**: Some countries (e.g. representative democracies) may have many more visible public government
figures than other kinds of governments (e.g. authoritarian regimes) that have only a few figureheads or visible leaders.
* **Internet usage and cultural bias**: Some countries have lower rates of broadband penetration than others. 
Even in countries with comparable access rates, some populations may be biased toward or against both using and 
editing Wikipedia due to their internet culture.
* **Freedom of expression**: Some countries have governments which block their citizens from free and uncensored use of 
the internet. Even if Wikipedia is nominally available for use, in countries like China where internet usage is known to
be tracked, there may be a perception that editing or creating Wikipedia articles about political figures is a dangerous act.
* **Data limitations**: Population data is represented in this study as a single number, not reflecting the fact that different
countries can have different age distributions. Additionally, Wikipedia is always changing, and the source data were curated in October 2017, so this data may be a little stale. Finally, the ORES service is a machine-learning-based API, so it contributes an
unknown amount of error (with unknown bias) to the process. 

 
## Data 

#### Politicians by Country from the English-language Wikipedia
page_data.csv was sourced from "Politicians by Country from the English-language Wikipedia" by Oliver Keyes. 
It is licensed CC-BY-SA 4.0 and can be found here:
https://figshare.com/articles/Untitled_Item/5513449

The Chicago-style citation for this work is:

Keyes, Oliver. 2017. “Politicians by Country from the English-language Wikipedia”. figshare. 
doi:10.6084/m9.figshare.5513449.v6.

The columns in this dataset are:
* page (str): Name of the page on Wikipedia
* country (str): The country of the politican described by that page, determined through tagging
* rev_id (long): The page's current revision id as of the time the data was extracted

#### World population data
Estimates of country-level population data are sourced from the [Population Reference Bureau](https://www.prb.org/). 
According to their [data sheet](http://www.worldpopdata.org/table), the data "lists all geopolitical entities with 
populations of 150,000 or more and all members of the UN, including sovereign states, dependencies, overseas departments, 
and some territories whose status or boundaries may be undetermined or in dispute." These data are compiled and modeled
from a variety of datasets that the PRB considers trustworthy. The indicator is based on "reasonable assumptions on the future course of fertility, mortality, and migration." As of writing, it was last updated on August 22, 2018.


The Population Reference Bureau and its affiliated entities do not publish a license for the public consumption or reuse of their data.
I have contacted their public information email address to inquire about their license, and am submitting the assignment under
the reasonable assumption that, since collecting and publishing this data seems to be one of the main goals of the PRB,
the use of their data in an academic research context will be allowed.

The columns in this dataset are:
* Geography (str): country or region name
* Population mid-2018 (millions) (float): Population indicator as described on the PRB website.  

#### The ORES API
[The Objective Revision Evaluation Service API](https://www.mediawiki.org/wiki/ORES) uses a machine learning model to score the quality of a particular
revision on Wikipedia. This project utilizes version 3 of the service, the latest available version at time of writing. It does not list license information but provides the API as a public use tool.


## License
This work is licensed under the MIT license.


## Files created
* hcds-a2-bias.ipynb: the iPython notebook containing the analysis and a writeup of results.
* data/ores_responses_%Y-%m-%d.json: contains the raw JSON response from the ORES service for all data in this analysis.
* data/pages_countries.csv: contains the merged WPDS and pages data including ORES responses.
* data/pages_per_capita.csv: A version of pages_countries.csv that has been modified to count per-capita articles and
high-quality articles for each country.
