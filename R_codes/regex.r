data <- c("There are 12 genes", "There are 1 gene", "There are 532 genes")
grep("There are [0-9]{2,} genes", data)
grep("There are [0-9]{2,} genes", data, value = TRUE)
grepl("There are [0-9]{2,} genes", data)
data2 <- c("There are 12 genes", "There are 1 gene", "There are 532 genes")
gsub("There are ([0-9]+) genes?", "Count_\\1", data)
gsub("There are ([0-9]{2,}) genes", "\\1", data) # CAUTION with the unmatch
#comment
data <- factor(c("02", 10, 1))
 as.numeric(data)
 x <- 2:5
y <- c(1, 3, 5)
x + y
x <- c(1, 2, NA, 4, NA, TRUE)

is.na(x)
x <- 3.1415

if (3 < x & x < 4){
   print(TRUE)
	} else {
   print(FALSE)
 }


x <- c(1, 3, 5)
y <- c(2, 4, 6)

merge(x, y)
rbind(x, y)

f <- function(x, y = 3, z = 2){
  temp <- x + y - z
  print(paste("temp: ", temp))
 	y <- y + 1
  result <- x - y + z
  result
}
 output <- f(10, z = 4)
 print(paste("output:", output))
data1 <- "hello_world"
len(data1)
nchar(data1)

paste("You", "are", "a", TRUE, "champion")
c("You", "_", "are", "_", "a", "_", T, "_", "champion")
paste("You", "are", "a", T, "champion", sep="_")
x <- matrix(1:12, 4, 3)
x[1, ]
x <- 2:5
y <- c(1, 3, 5)
x + y
rep(1:3, each= 3 ,times= 2)
x <- 5
y <- 3
f1 <- function(x){
	y <- 4
	x + y
}
y



f1(2)
data1 <- c(1,3,6,8.5,7.2)
data2 <- c(2,4,5,5.2,9.3)
t.test(data1,data2, paired=T, mu=2)
data <- factor(c("02", 10, 1))
as.numeric(data)
x <- 5
y <- 3
f <- function(x){
    y <- 4
   x + y
} # End of function

y
f(2)
for (i in 1:4) {
 if (i %% 2 == 0){
   x <- i
 } else {
   x <- FALSE
 }
}
i = 1
4 %% 2 == 0
