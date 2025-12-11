getwd()
setwd("/Volumes/archive/diermeierlab/Brooke_MSc/docs")
getwd()

# In this script I am going to isolate the expression data from immune cells within TME from 'labelled_markers_sorted'.
# Anything that works I will take note of, and copy into a separate script that will go into the 'constructive' file/directory

# Starting off following the suggestion of chatgpt when asked how I go about doing this: #
# Load data
expressionData <- readRDS("/Volumes/archive/diermeierlab/Brooke_MSc/data/Holly_data/labeled_markers_sorted.RDS") 

# Explore data
head(expressionData, 100)
summary(expressionData)

# Getting github/workflowr loaded on here for version control
install.packages("workflowr")
library("workflowr")
wflow_git_config(user.name = "Broookemorrison", user.email = "morbr565@student.otago.ac.nz")
wflow_start("/Volumes/archive/diermeierlab/Brooke_MSc", existing = TRUE)
wflow_build()
wflow_view()
wflow_status()
wflow_publish(c("._.DS_Store", "Holly_data", "Learning how to use R", "Trial_n_error"), "Publishing all initial folders and files that came up when I checked status")
wflow_status()
wflow_publish(c("analysis/about.Rmd", "analysis/index.Rmd", "analysis/license.Rmd"), "publsihing initial files withn my workflowr project")
wflow_status()
wflow_publish("Trial_n_error/Isolating_immuneCell_expression_data.R")
wflow_status()
wflow_use_github("broookemorrison")

library(dplyr)

install.packages("pheatmap")
library(pheatmap)
annotated_lncRNA_list <- readRDS("/Volumes/archive/diermeierlab/Brooke_MSc/data/Holly_data/lncRNAs_annotation_list.RDS")
head(annotated_lncRNA_list, 100)
getwd()
