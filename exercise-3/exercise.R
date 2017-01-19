# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
spending <- data.frame(USPersonalExpenditure, stringsAsFactors = FALSE)

# What are the column names of your dataframe?
print(colnames(spending))


# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!

# What are the row names of your dataframe?
print(rownames(spending))

# Create a column "category" that is equal to your rownames
spending$category <- rownames(spending)

# How much money was spent on personal care in 1940?
print(spending['Personal Care', 1])

# How much money was spent on Food and Tobacco in 1960?
print(spending['Food and Tobacco', 3])

print(spending)

# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
biggest.exp <- max(spending$X1960)
print(biggest.exp)

# Define a function `DetectHighest` that takes in a year as a parameter, and
# returns the highest spending category of that year
DetectHighest <- function(year)
{
  # year <- year - 1935
  # year <- year / 5
  year <- paste0("X", year)
  highest <- max(spending[,year])
  return(highest)
}

# Using your function, determine the highest spending category of each year

print(DetectHighest(1940))
print(DetectHighest(1945))
print(DetectHighest(1950))
print(DetectHighest(1955))
print(DetectHighest(1960))
