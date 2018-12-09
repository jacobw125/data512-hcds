# Data extraction and cleaning
install.packages("tidyverse")
library(readxl)

h1b = read_excel("data_sources/H-1B_Disclosure_Data_FY2018_Q4_EOY.xlsx")
perm = read_excel("data_sources/PERM_Disclosure_Data_FY2018_Q4_EOY.xlsx")



# Convert binary fields Y/N to TRUE/FALSE
h1b_yn_cols = c("AGENT_REPRESENTING_EMPLOYER",
                "FULL_TIME_POSITION",
                "H1B_DEPENDENT",
                "WILLFUL_VIOLATOR",
                "SUPPORT_H1B",
                "LABOR_CON_AGREE")

perm_yn_cols = c(
  "REFILE",
  "SCHD_A_SHEEPHERDER",
  "FW_OWNERSHIP_INTEREST",
  "JOB_INFO_TRAINING",
  "JOB_INFO_ALT_COMBO_ED_EXP",
  "JOB_INFO_EXPERIENCE",
  "JOB_INFO_ALT_FIELD",
  "JOB_INFO_ALT_COMBO_ED_EXP",
  "JOB_INFO_ALT_CMB_ED_OTH_YRS",
  "JOB_INFO_FOREIGN_ED",
  "JOB_INFO_JOB_REQ_NORMAL",
  "JOB_INFO_FOREIGN_LANG_REQ",
  "JOB_INFO_COMBO_OCCUPATION",
  "JI_OFFERED_TO_SEC_J_FW",
  "JI_FW_LIVE_ON_PREMISES",
  "JI_LIVE_IN_DOMESTIC_SERVICE",
  "JI_LIVE_IN_DOM_SVC_CONTRACT",
  "RECR_INFO_PROFESSIONAL_OCC",
  "RECR_INFO_COLL_UNIV_TEACHER",
  "RECR_INFO_COLL_TEACH_COMP_PROC",
  "RI_COLL_TCH_BASIC_PROCESS",
  "RECR_INFO_SUNDAY_NEWSPAPER",
  "RI_2ND_AD_NEWSPAPER_OR_JOURNAL",
  "RECR_INFO_EMPLOYER_REC_PAYMENT",
  "RECR_INFO_BARG_REP_NOTIFIED",
  "RI_POSTED_NOTICE_AT_WORKSITE",
  "RI_LAYOFF_IN_PAST_SIX_MONTHS",
  "FW_INFO_TRAINING_COMP",
  "FW_INFO_REQ_EXPERIENCE",
  "FW_INFO_ALT_EDU_EXPERIENCE",
  "FW_INFO_REL_OCCUP_EXP",
  "PREPARER_INFO_EMP_COMPLETED"
)

process_yna <- function(col) {
  return(
    ifelse(is.na(col) | col == "A", NA, 
           ifelse(col == "Y", TRUE, FALSE)))
}

for (col in h1b_yn_cols) {
  print(col)
  h1b[,col] = process_yna(as.character(h1b[, col]))
}

for (col in perm_yn_cols) {
  print(col)
  perm[,col] = process_yna(as.character(perm[, col]))
}


# Turn NAs to recognized format
# Change "A" to recognized format

perm = data.frame(sapply(perm,function(x) {x <- gsub("NA",NA,x)}))
perm = data.frame(sapply(perm,function(x) {x <- gsub("A",NA,x)}))

h1b = data.frame(sapply(h1b,function(x) {x <- gsub("NA",NA,x)}))
h1b = data.frame(sapply(h1b,function(x) {x <- gsub("A",NA,x)}))

# Write out to a universal / open format
write.table(h1b, file=gzfile("extracted_data/h1b.tsv.gz"), sep='\t', row.names=F)
write.table(perm, file=gzfile("extracted_data/perm.tsv.gz"), sep='\t', row.names=F)

# Example of how to read this format
# h1b = read.csv(file=gzfile("extracted_data/h1b.tsv.gz"), sep="\t")
# perm = read.csv(file=gzfile("extracted_data/perm.tsv.gz"), sep="\t")

