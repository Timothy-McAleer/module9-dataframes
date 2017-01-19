# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
points.scored <- c(20,31,31,26,5,40,10,24,31,25,26,20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
points.against <- c(25,25,24,15,14,7,38,3,34,23,6,36)

# Combine your two vectors into a dataframe
scoreboard <- data.frame(points.scored, points.against)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!

diff <- points.scored - points.against

scoreboard$difference <- diff

print(scoreboard)

# Create a new column "won" which is TRUE if the Seahawks won

winning <- scoreboard$difference > 0

scoreboard$won <- winning

# Create a vector of the opponent names corresponding to the games played

names <- c("Saints",
           "Bills",
           "Patriots",
           "Eagles",
           "Buccaneers",
           "Panthers",
           "Packers",
           "Rams",
           "Cardinals",
           "49ers",
           "Lions",
           "Falcons")

# Assign your dataframe rownames of their opponents

scoreboard$teams <- names

# View your data frame to see how it has changed!

print(scoreboard)
