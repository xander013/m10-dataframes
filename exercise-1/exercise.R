# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
points <- c(36, 10, 12, 3)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
allowed.points <- c(6, 9, 10, 9)

# Combine your two vectors into a dataframe
points.frame <- data.frame(points, allowed.points)

# Create a new column "diff" that is the difference in points
points.frame$diff <- points.frame$points - points.frame$allowed.points

# Create a new column "won" which is TRUE if the Seahawks wom
points.frame$won <- points.frame$points > points.frame$allowed.points

# Create a vector of the opponents
opponents <- c("Cardinals", "Vikings", "Dolphins", "Rams")

# Assign your dataframe rownames of their opponents
rownames(points.frame) <- opponents
