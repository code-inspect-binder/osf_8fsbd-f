#### This file analyses the IMDB data.


# lets set the working directory. You'll have to change this to your file patch to make this work.
workingdirectory <- 'C:/Users/Ben Stauch/Documents/R/Improving your statistical inferences/Replication Documentation/Processing and Analysis/Importable Data'
setwd(workingdirectory)

# load the data
data <- read.csv2('Ratings.csv', header = TRUE, stringsAsFactors = FALSE)

# split the data and transform it into integers
ARTE <- as.numeric(data[which(data$TV.Station == 'ARTE'),]$Rating)
Degeto <- as.numeric(data[which(data$TV.Station == 'Degeto Film'),]$Rating)

# run the one-sided t-test with alpha = 0.1
t.test(ARTE, Degeto, alternative = "greater", conf.level = 0.90)

# Results:

# data:  ARTE and Degeto
# t = 2.6748, df = 23.537, p-value = 0.006689
# alternative hypothesis: true difference in means is greater than 0
# 90 percent confidence interval:
# 0.3718233       Inf
# sample estimates:
# mean of x mean of y 
# 6.793333  6.060000 