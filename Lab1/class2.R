myfun <- function(x){
  y <- x^2
  layout(matrix(1:2, nrow = 1)) # breaks graphic one row 2 columns
  plot(x = x, y = y) # scatter plot
  boxplot(y) # box plot
  return(list(x = x, y = y)) # 
}

myfun(x = 1:10)


ddt <- read.csv("DDT-1.csv")
L <- ddt$LENGTH
z <- (L - mean(L))/sd(L)
z
L[abs(z) > 3]
z[abs(z) > 3]

ddt[abs(z) > 3,]

lposs <- L[abs(z) >= 2 & abs(z) <= 3]
length(lposs)

df <- ddt[abs(z) >= 2 & abs(z) <= 3,]
df
with(df, boxplot(LENGTH))
with(df, hist(LENGTH))