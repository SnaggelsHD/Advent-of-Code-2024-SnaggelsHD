df <- read.delim("./Task1.txt", sep =" ", header = FALSE)

# Part 1

# sort the two collumns
df$V1Sort <- sort(df$V1)
df$V2Sort <- sort(df$V4)

# calculate the absolute difference between the two items of each row
df$diff <- abs(df$V1Sort - df$V2Sort)

# calculate the sum of the differences
sumDiff <- sum(df$diff)


# Part 2

# search how often left is in right
df$leftInRight <- sapply(df$V1, function(x) sum(df$V4 == x))

# left * times in right
df$leftTimesInRight <- df$V1 * df$leftInRight

# sum the values
sumLeftTimesInRight <- sum(df$leftTimesInRight)

