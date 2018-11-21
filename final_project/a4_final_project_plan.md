# A4: Final Project Plan
__Jacob Warwick; November 21, 2018__

##Why are you planning to do this analysis?

<small>*Provide background information about the topic, research questions/hypotheses, (imagined) business goals, and anything else that will be required to properly contextualize your study.*</small>

The topic of immigration is generally considered to be a "hot button" issue; indeed, it has been a contentious issue in the political sphere for my entire lifetime, and one that has generated much angst over the course of U.S. history. Generations of immigrant communities have been vilified and then gradually integrated into American society. Often, politicians opposed immigration to further their own rise to power, by fomenting racism and xenophobic fear and by encouraging the electorate to see themselves as victims of immigration policy. At no time in recent history has this been more true than in the 2016 election and subsequent Trump presidency. In modern times, it can feel like immigration has become little more than a dog-whistle for race-motivated xenophobia.

History paints a more nuanced picture of immigration into the United States. While the U.S. has gone through periods of intense xenophobia not unlike the one we see today, at other times, it has heavily relied on immigrants, for example the foreign workers brought in to prevent agricultural disaster as part of the World War II-era Bracero program. The United States has been complicit in creating and inflaming conflicts in South and Central America, creating millions of new refugees and asylum seekers, arguably creating the immigration "crisis" that we now find ourselves in.

The U.S. Government publicly releases data on applicants for certain kinds of work visas. I would like to examine that information to gain a better picture of the demographics of immigrants applying legally through one worker visa program. My hypothesis is that the demographics and characteristics of these applicants will be surprising, and that using modern data analysis tools like text analysis on this dataset will provide some interesting insights into the industries and jobs that are being filled by these immigrants. I also hope to draw some insights about the types of immigrants who are *not* present in this dataset, and who are being denied by the current visa program. Finally, I see this data as having potential to de-anonymize individuals, and I want to explore the possibility that this data is leaky and possibly putting potential immigrants at risk.

##### References

St. John, Rachel. *Line in the Sand: A History of the Western U.S.-Mexico Border.* Princeton, NJ: Princeton University Press, 2013. 


 Tichenor, D. J. *"Strange Bedfellows: The Politics and Pathologies of Immigration Reform."* Labor: Studies in Working-Class History of the Americas 5, no. 2 (2008): 39-60. doi:10.1215/15476715-2007-077. 
 
 
 

## What is your plan?

<small>*Describe and link to the data source(s) will you collect, how 
data will be collected and processed, the analysis you intend to perform, and the outcomes and deliverables you anticipate.*</small>

I am using data from the United States Department of Labor Employment & Training Administration, Office of Foreign Labor Certification. This is the office that receives forms submitted by companies that are requesting the ability to hire a foreign worker on a visa. The office releaes these requests on a quarterly basis, "for the purpose of performing in-depth longitudinal research and analysis." 

It is available at https://www.foreignlaborcert.doleta.gov/performancedata.cfm.

The data file is 119M rows by 125 columns, with a very helpful data dictionary available here:  
https://www.foreignlaborcert.doleta.gov/pdf/PerformanceData/2018/PERM_FY18_Record_Layout_Q4.pdf

Some notable columns:
* EMPLOYER_NAME and address
* Prevailing wage for the job
* Location of the job
* Indicator variables describing the job
* COUNTRY_OF_CITIZENSHIP, FOREIGN_WORKER_INFO_CITY
* FOREIGN_WORKER_INFO_EDUCATION
* NAICS_US_CODE - industry code of the job
* Job title
 
The big question I want to answer is, what are the characteristics of those who have been accepted vs. denied under this program? Specifically, what kinds of jobs, and with what levels of education, have led to denials or acceptances? What biases are present in this data, and what can learning about those biases tell me about the nature of this program? Are certain kinds of immigrants favored over others?

I am also curious, given the very specific nature of this data, whether it might be possible to de-anonymize this data. I will proceed carefully in this respect, since I don't want to publish anything that would "dox" a person, even if the data are publicly available. 

After cleaning the data, I will start with some general histograms and frequency tables to understand the demographics of accepted and denied workers, and the types of jobs they applying for visas with. I will then make comparisons over time and by country of origin, and run further investigations into specific cases of accepted and denied applications. I may also try some simple models to see if I can predict whether an applicant will be accepted or denied based on their demographic characteristics and the job they are applying for, with the hope that I can use an inheritable model to learn more about the dataset.

 
## Are there any unknowns or dependencies that might affect your ability to complete this project? 

The data are large, but represent only one visa program. The U.S. immigration system is huge and complex, so I'm worried I might need to combine this source with additional sources from other types of visa programs to get a more complete picture. If so, those data are also available from the same source, but merging the sets could be complicated.

## How do human-centered design considerations inform...
 
### a. your decision to pursue this project

This data is a record of immigration decisions made by the U.S. Federal Government. In a sense, it is entirely human centered - it is a log of decisions this office made which altered the lives and fates of millions of people. Beyond that, this dataset has the potential to de-anonymize potential immigrants, which speaks directly to themes of privacy and consent.

### b. your approach to performing the work?

I will be performing this work under the stanards and best practices for open research established over this course. Additionally, I will be using models and data anlysis to understand the human side of the data, instead of modeling it for commercial reasons, like for consumer research. I hope the models will help me learn more about the people who are a part of this system and whose lives were affected by it.