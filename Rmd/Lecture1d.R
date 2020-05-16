---
  title: 'Lecture 1d: Detecting Outliers & Missing Data imputation'
author: "Amaury de Vicq"
date: "16/5/2020"
output:
  html_document:
  toc: true
toc_float:
  collapsed: false
smooth_scroll: true
---
  
```{r setup, include = FALSE, warning = FALSE}
library(dplyr)
library(tibble)
```

# Introduction

In this lecture, we will occupy ourselves (i.) identifying outliers and (ii.) missing value imputation (NA). This is a crucial step in the data cleaning process and is often necessary for any kind of succesful data analysis. This is because (i.) missing data might prevent functions to work properly, and (ii.) outliers could corrupt and/or bias to your results.

# Part 1: Missing Data Handling

## Basic guidelines
  
Raw, unclean data often has many missing data (NAs). Especially in economic history, this is very common and could be due to a variety of different reasons. It might be that some of the sources you are using to create your dataset has several unreadable entries, that you cannot access the sources and/or that some years are missing. While it might be possible to simply overlook these missing observations or delete them for your dataset, this is not always the best approach.     

In fact it is important to distinguish between three categories of missing data:
  - MCAR (missing completely at random)
  - MAR (missing at random)
  - MNAR (missing not at random)

These categories determine how to best solve the missing data issues. Some basic guidelines include:
  - If the amount of NAs < 5% and they are MCAR, it generally acceptable to simply delete them and/or to use functions with a built-in NA handling feature
  - If the amount of NAs > 5% and they are MCAR, it is better to use simple imputation methods such as mean imputation and interpolation
  - If they are MAR or MNAR it is often advised to rely on more complex imputation methods such as MICE (multiple imputation by chained equations)
  
## Simple methods for missing data treatment



