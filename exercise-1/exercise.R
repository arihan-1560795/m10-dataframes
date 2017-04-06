# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
seahawks.scored <- c(36, 10, 10, 9)


# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
seahawks.lost <- c(6, 9, 12, 10)

# Combine your two vectors into a dataframe
my.frame <- data.frame(seahawks.scored, seahawks.lost)

# Create a new column "diff" that is the difference in points
my.frame$diff <- my.frame$seahawks.scored - my.frame$seahawks.lost

# Create a new column "won" which is TRUE if the Seahawks wom
my.frame$won <- my.frame$diff > 0
View(my.frame)

# Create a vector of the opponents
opponents <- c('Cardinals', 'Vikings', 'Dolphins', 'Rams')

# Assign your dataframe rownames of their opponents
rownames(my.frame) <- opponents
