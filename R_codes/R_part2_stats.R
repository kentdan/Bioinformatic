#### data.frame ####
#always getwd first
data(iris)
dim(iris)      # Dimension of the data
names(iris)    # column names
colnames(iris) # column names
rownames(iris) # rownames
dimnames(iris) # Display row and column names

# multiple ways to extract a column
iris$Species       # Use $ sign
iris[[5]]          # Column number
iris[["Species"]]  # Column name

# extract multiple columns at the same time
iris[4:5]          # Column 4 and 5

# Column 3 and 5
iris[c(3,5)]
iris[, c(3,5)]
iris[, c("Petal.Length",  "Species")]
iris[, c(FALSE, FALSE, TRUE, FALSE, TRUE)]

# Remove column 5
iris[, -5]

# Subset
iris[["Petal.Width"]] > 2   # Rows satisfy this condition
index <- iris[["Petal.Width"]] > 2
iris[index, ]   # Subset of data

iris[["Species"]] == "setosa"
index_2 <- which(iris[["Species"]] == "setosa") # row numbers
iris[index_2, ]

#### Factor ####
data(iris)
summary(iris[["Species"]])
str(iris[["Species"]])
# Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
class(iris[["Species"]])  # factor


factor(c(1, "A", 3.14, 1, 1))
# [1] 1    A    3.14 1    1
# Levels: 1 3.14 A

factor(c("Red", "Yellow", "Green"), ordered=TRUE) # Wrong order

# Need to specify the order
factor(c("Red", "Green", "Yellow", "BLUE"), levels=c("Red", "Yellow", "Green"), ordered=TRUE)

data <- factor(c("X", 5, "Red"))
data
# [1] X   5   Red
# Levels: 5 Red X

typeof(data)
# [1] integer
as.numeric(data)      # Based on the order of 'levels'
# [1] 3 1 2

as.character(data)
# [1] "X"   "5"   "Red"

#### ANOVA ####
data(iris)
aov(Sepal.Width ~ Species, data = iris)
# Call:
#    aov(formula = Sepal.Width ~ Species, data = iris)
#
# Terms:
#                  Species Residuals
# Sum of Squares  11.34493  16.96200
# Deg. of Freedom        2       147
#
# Residual standard error: 0.3396877
# Estimated effects may be unbalanced

result <- aov(Sepal.Width ~ Species, data = iris)
summary(result)
#              Df Sum Sq Mean Sq F value Pr(>F)
# Species       2  11.35   5.672   49.16 <2e-16 ***
# Residuals   147  16.96   0.115
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

plot(Sepal.Width ~ Species, data = iris)

result <- aov(Sepal.Width ~ Species, data = iris)
TukeyHSD(result)
#   Tukey multiple comparisons of means
#     95% family-wise confidence level
#
# Fit: aov(formula = Sepal.Width ~ Species, data = iris)
#
# $Species
#                        diff         lwr        upr     p adj
# versicolor-setosa    -0.658 -0.81885528 -0.4971447 0.0000000
# virginica-setosa     -0.454 -0.61485528 -0.2931447 0.0000000
# virginica-versicolor  0.204  0.04314472  0.3648553 0.0087802

#### Read/Write dataset ####
# csv - Comma-separated values
getwd()
dataset <- read.table("w2_tree1.csv", header=TRUE, sep=",")

# Another common format tsv - tab-separated values
dataset_t <- read.table("w2_tree1.tsv", header=TRUE, sep="\t")

# CAUTON! Always check your data
summary(dataset)
str(dataset)
head(dataset)

# help file
?read.table

# csv - Comma-separated values
write.table(dataset, file="output.csv", sep=",")

# tsv - tab-separated values
write.table(dataset, file="output.tsv", sep="\t")

# help
?write.table

#### Regression ####
dataset <- read.table("w2_tree1.csv", header=TRUE, sep=",")
str(dataset)
# 'data.frame':	31 obs. of  3 variables:
#  $ Diameter: num  8.3 8.6 8.8 10.5 10.7 10.8 11 11 11.1 11.2 ...
#  $ Height  : int  70 65 63 72 81 83 66 75 80 75 ...
#  $ Volume  : num  10.3 10.3 10.2 16.4 18.8 19.7 15.6 18.2 22.6 19.9 …

lm(Height ~ Diameter, data = dataset)
# Call:
# lm(formula = Height ~ Diameter, data = dataset)
#
# Coefficients:
# (Intercept)     Diameter
#      62.031        1.054

result <- lm(Height ~ Diameter, data = dataset)
summary(result)
# Call:
# lm(formula = Height ~ Diameter, data = dataset)
#
# Residuals:
#     Min       1Q   Median       3Q      Max
# -12.5816  -2.7686   0.3163   2.4728   9.9456
#
# Coefficients:
#            Estimate Std. Error t value Pr(>|t|)
# (Intercept)  62.0313     4.3833  14.152 1.49e-14 ***
# Diameter      1.0544     0.3222   3.272  0.00276 **
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#
# Residual standard error: 5.538 on 29 degrees of freedom
# Multiple R-squared:  0.2697,	Adjusted R-squared:  0.2445
# F-statistic: 10.71 on 1 and 29 DF,  p-value: 0.002758

plot(x=dataset$Diameter, y=dataset$Height)
plot(Height ~ Diameter, data = dataset)
abline(result)
 library("tidyverse")
 glimpse(dataset)
#ctrl shift m  %>%
 
