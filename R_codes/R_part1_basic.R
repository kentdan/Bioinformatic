#### Syntax ####
# Commend. For human only
# Space doesn't matter
# A line starts with
# >    # Start of the code
# [1]  # Output
# +    # Continuous from the previous line

#### Declare varable ####
x <- 1
y <- "bioinfo"
z <- 3.1415
temp1 <- 3e-4
temp_yes <- TRUE
temp_no  <- FALSE

#### Basic math operations ####
10 + 1
13 - 5
2 * 3
5 / 2

4 ^ 3    #  4 * 4 * 4
4 ** 3

(2 + 3) * 4 # ( ) works as expected

sqrt(10)  # 10 ^ 0.5
log(2)    # log2(2)   # log10(10)
exp(2)    # exp^(0.5)
sin(90)


#### Logical comparison ####
1 == 1 # TRUE. [1] TRUE

1 != 3  # NOT equal. [1] TRUE

3 <= 1 # [1] FALSE

#  &   AND
3 >= 1 & 5 <= 2  # [1] TRUE
> 3 >= 1 & 5 <= 2  # [1] FALSE

# |   OR
3 >= 1 | 5 <= 2  # [1] TRUE
3 >= 1 | 5 <= 2  # [1] TRUE


x <- 5
x + 0.4  # [1] 5.4

log(x)  # [1] 1.609438

y <- x + 1   # [1] y==6
y <- y * 2   # [1] y==12


#### Vectorization ####
1:5  # [1] 1 2 3 4 5

x <- 1:3
2^x  # [1] 2 4 8

c(1, 3, 5, 7)  # [1] 1 3 5 7

sqrt( c(1, 4, 9, 20) )   # [1] 1 2 3  4.472136

#### Help!! ####
ls()  # List all variables and functions in your R session.
rm("var_name")  # Remove variable or function

# Get documentation
# ?function_name
# help(function_name)
?mean

# Search for documentation
# ??function_name
# help.search(function)
??mean


#### Basic stat functions ####
x <- 1:10
mean(x)
sd(x)
var(x)
cor(x)


#### Vector and list ####
# c()        # vector: store the same class
# list()     # list: Can store different classes


# convert everything to character
c(1, 2, "3")  # [1] "1" "2" "3"

list(1, 2, "3")
# [[1]]
# [1] 1     # Numeric
#
# [[2]]
# [1] 2     # Numeric
#
# [[3]]
# [1] "3"   # Character
#


data <- c(10, 20, 30, 40, 50)
data[2]      # extract 2
data[2:4]    # extract 2 to 4
data[c(2,4)] # extract 2 and 4
# [1] 20 40

#### Matrix ####
?matrix()     # 2 dimensions: store the same class
?data.frame() # 2 dimensions: each column store different class

matrix(1:6, nrow=2)
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6


data <- matrix(1:12, nrow=3)
data
#      [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

# Row before column!
data[2, ]     # extract row 2
data[, 2]     # extract column 2
data[c(1,3), c(2,4)] # extract row 1 and 3, AND column 2 and 4


#### Some useful functions ####
data(iris)                 # Load default Iris dataset
summary(iris)              # Summarise this dataset
str(iris)                  # internal structure
head(iris)                 # Look at the first 6 rows
tail(iris)                 # Look at the last 6 rows
head(iris, n=10)           # Look at the first n rows (10)
tail(iris, n=10)           # Look at the last n rows (10)

class(iris[[1]])           # 1st column
# [1] "numeric"
class(iris[["Species"]])   # Column name "Species”
# [1] "factor"
typeof(iris[[1]])          # 1st column
# [1] "double"
typeof(iris[["Species"]])  # Column name "Species”
# [1] "integer"      # Why? It's a factor. See the factor section.
