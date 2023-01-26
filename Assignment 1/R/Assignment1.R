#### Getting Started in R

# if you are new to r, you may need to install some packages that are used.
#uncomment the following lines of code (by deleting the "#" symbol or by
#highlighting and hitting cntl shift c)

# install.packages("tidyverse")
# install.packages("ggplot2")
# install.packages("readxl")

#load required packages
library(tidyverse)
library(ggplot2)
library(readxl)

# read file
#(change the file path here to wherever you saved the file)
#note: in r "\" confuses the program, change all "\" to "/"

df <- read_excel("/Users/alexisathens/Documents/UofU/6 - Spring 2023/Applied Econometrics/Data/1.xlsx")


## run univariate regression
model <- lm(SoldPrice~TotSqf, data=df) # run basic model
summary(model) # for model summary

par(mfrow = c(2,2)) # annoying thing to have them paste all in one image
plot(model) # for model assumption tests

# plot results
ggplot(df, aes(x=TotSqf, y=SoldPrice))+ 
  geom_point() +   
  geom_smooth(method='lm')



## run multiple regressions

library(lubridate) # for working with dates

df$age <- year(ymd(df$ListDt)) - df$YearBlt # create age variable

model2 <- lm(SoldPrice ~ TotSqf + TotKitch + TotBed + Acres + age, data = df)
summary(model2)

par(mfrow = c(2,2))
plot(model2)

library(regclass) # for VIF

model3 <- lm(SoldPrice ~ TotSqf + TotKitch + TotBed + TotBth + TotFire + Acres + age, data = df)
summary(model3)
VIF(model3)

par(mfrow = c(2,2))
plot(model3)


## principal components analysis (PCA)
# see https://www.statology.org/principal-components-analysis-in-r/

df_pca <- df %>% select(TotSqf, TotBed, TotBth, TotFire, TotKitch, Acres, age) %>% na.omit()

res_pca <- prcomp(df_pca)

par(mfrow = c(1, 1))
biplot(res_pca, scale = 0) # not great
