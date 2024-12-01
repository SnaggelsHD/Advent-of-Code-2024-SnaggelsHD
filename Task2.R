df <- read.delim2("Task1.txt", sep =" ", header = FALSE)

# how much does each item in the left appear in the right
df$C1 <- sapply(df$V1, function(x) sum(df$V4 == x))

#sum the values
sum(df$C1)