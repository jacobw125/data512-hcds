# A01 Data Curation

## Goal
This project downloads monthly page-view data from the English Wikipedia API, then creates a simple visualization displaying those data over time.

## Data souce, attribution, and license.
The data are sourced from the [Wikimedia Foundation](https://wikitech.wikimedia.org/wiki/Analytics/AQS/Pageviews). According to Wikipedia, these 
data are licensed under the [CC-BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) and [GFDL](https://www.gnu.org/licenses/fdl-1.3.en.html) licenses.
Accordingly, this work is also licensed under CC-BY-SA 3.0 and GFDL (see LICENSE.txt).

## Artifacts from this analysis
### collected_data
This folder contains JSON files of the raw data dumps downloaded from Wikimedia. 
The files are named in the format {legacy,pageview}\_{access_type}\_{start in YYYYMMDDHH}-{end in YYYYMMDDHH}.json.

### figure_1_million_page_views_over_time.png
A copy of the final figure produced by the analysis.

### en-wikipedia_traffic_200801-201709.csv
A UTF-8 formatted comma-separated-values file containing the following columns:

* year (YYYY)
* month (MM)
* pagecount_all_views
* pagecount_desktop_views
* pagecount_mobile_views
* pageview_all_views
* pageview_desktop_views
* pageview_mobile_views

All columns contain integers with some columns formatted as floats. 

In May 2016 the Wikimedia foundation changed from the PageCount to the PageView system which excludes spiders and crawlers. 
For more information on this, see [this page](https://meta.wikimedia.org/wiki/Research:Page_view).

Additionally, it appears there are artifacts of the changeover in the row corresponding to August 2016. This is described in my report.