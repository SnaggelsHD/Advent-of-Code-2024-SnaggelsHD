df <- read.delim2("Task1.txt", sep =" ", header = FALSE)

#sort the two collumns
df$C1 <- sort(df$V1)
df$C2 <- sort(df$V4)

# calculate the absolute difference between the two items of each row
df$diff <- abs(df$C1 - df$C2)

# calculate the sum of the differences
sum(df$diff)