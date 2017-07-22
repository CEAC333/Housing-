# Housing Prices


### Reading the Working Directory and Data
setwd('./Realty')

oakrent <- read.delim("Oakrent.tsv")
oakrent

### Square Feet Regression
squarefeet <- lm(Rent ~ House..sf. + Lot..sf., data=oakrent)
summary(squarefeet)


### Bathroom Regression
bathrooms <- lm(Rent ~ Bedrooms + Bathrooms, data = oakrent)
summary(bathrooms)

### Bedroom Regression
bedrooms <- lm(Rent ~ Bedrooms, data = oakrent)
summary(bedrooms)


### Filtering the Data to Calculate the Mean, Median, Variance, and Standard Deviation for Rent

oakrent$Rent
oakrent$Lot..sf.
oakrent$Bedrooms

### Mean
mean(oakrent$Rent)

### Median
median(oakrent$Rent)

### Variance
var(oakrent$Rent)

### Standard Deviation
sd(oakrent$Rent)

### Range
range(oakrent$Rent)


### Plotting the Rent
library(graphics)

plot(oakrent)