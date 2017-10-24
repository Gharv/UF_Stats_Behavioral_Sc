# ---------------------------------------------------------------------
# Statistics for the Behavioral Sciences (Chapter 2).

# Problem 3, page 62.
# ---------------------------------------------------------------------

# Create vectors with variable names provided by the text. 
X <- c(5,4,4,4,3,3,3,3,2,2,2,2,2,1,1)

Data <- as.data.frame(table(X))

# Part a
sum(Data$Freq)

# Part b
sum(Data$Freq * as.numeric(Data$X))

# Part c
sum(Data$Freq * as.numeric(Data$X)^2)



# ---------------------------------------------------------------------
# Problem 4, page 63.
# ---------------------------------------------------------------------

# Create vectors with variable names provided by the text. 
X <- c(6,5,5,4,4,3,3,3,3,2,2,2,1,1)

Data <- as.data.frame(table(X))

# Part a
sum(Data$Freq)

# Part b
sum(Data$Freq * as.numeric(Data$X))

# Part c
sum(Data$Freq * as.numeric(Data$X)^2)



# ---------------------------------------------------------------------
# Problem 5, page 63.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
X <- c(44,19,23,17,25,47,32,26,25,30,18,24,49,51,24,13,43,27,34,16,52,18,36,25)

# Part a
# Cut the data up into the given intervals and create a frequency table
table(cut(X, breaks = c(10,15,20,25,30,35,40,45,50,55)))

# Part b
# Cut the data up into the given intervals and create a frequency table
table(cut(X, breaks = c(10,20,30,40,50,60)))



# ---------------------------------------------------------------------
# Problem 6, page 63.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
X <- c(17,30,45,20,39,53,28,19,24,21,34,38,22,29,64,22,44,36,16,56,20,23,58,32,25,22,51,26,43)


# Cut the data up into the given intervals and create a frequency table
table(cut(X, breaks = c(16,25,35,45,55,65)))



# ---------------------------------------------------------------------
# Problem 10, page 63.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
X <- c(8,5,9,6,8,7,4,10,6,9,7,9,9,5,8,8,6,7)

# Part a
table(X)

# Part b
hist(X)



# ---------------------------------------------------------------------
# Problem 14, page 64.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
X <- c(13,14,12,15,15,14,15,11,13,14,11,13,15,12,14,14,10,14,13,15)

# Create table to look at frequencies
table(X)

# It looks like it is skewed left



# ---------------------------------------------------------------------
# Problem 15, page 64.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
X <- c(13,14,12,15,15,14,15,11,13,14,11,13,15,12,14,14,10,14,13,15)

# Part a
table(X)

# Part b
hist(X)

# Part c



# ---------------------------------------------------------------------
# Problem 17 page 64.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
X <- c(5,5,4,4,4,4,4,3,3,3,3,3,3,2,2,2,2,1,1,1)

# Cut the data up into the given intervals and create a frequency table
f <- table(X)

# Make the cumulative sum to get cumulative frequencies.
cf <- cumsum(f)

# Make the cumulative percentages.
cp <- cumsum(prop.table(f))

# Create data.frame containing all our data.
df <- data.frame(f = f, cf = cf, cp = cp)

# Remove f.Var1 column since they are accounted for in the row names.
df <- df[,-1]

# Order columns to match the data presented in the text.
df <- df[order(-cf),]

# Part a
# Using quotes around the numbers "3" and "2" refer to the name of the row rather than
# the third and second column respectively.
df["2","cp"] + (df["3","cp"] - df["2","cp"])/2

# Part b
df["4","cp"] + (df["5","cp"] - df["4","cp"])/2

# Part c
# we use type 1 in the quantile function since our data is Discontinuous.
quantile(X, .15, type = 1)

# Part d
quantile(X, .65, type = 1)



# ---------------------------------------------------------------------
# Problem 18 page 64.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
X <- c(rep("0-4",2), rep("5-9",3), rep("10-14",7), rep("15-19",8), rep("20-24",4), "25-29")

# Cut the data up into the given intervals and create a frequency table
f <- table(X)

# To get the correct ordering
f <- f[c("0-4","5-9","10-14","15-19","20-24","25-29")]

# Make the cumulative sum to get cumulative frequencies.
cf <- cumsum(f)

# Make the cumulative percentages.
cp <- cumsum(prop.table(f))

# Create data.frame containing all our data.
df <- data.frame(f = f, cf = cf, cp = cp)

# Remove f.Var1 column since they are accounted for in the row names.
df <- df[,-1]

# Order columns to match the data presented in the text.
df <- df[order(-cf),]

# Part a
df["5-9","cp"] + (df["10-14","cp"] - df["5-9","cp"])/2

# Part b
df["15-19","cp"] + (df["20-24","cp"] - df["15-19","cp"])/2

# # Part c
# # we use type 1 in the quantile function since our data is Discontinuous.
# quantile(X, .48, type = 1)
# 
# # Part d
# quantile(X, .96, type = 1)



# ---------------------------------------------------------------------
# Problem 19 page 65.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
X <- c(rep(9,7),rep(8,3), rep(7,6), rep(6,5), rep(5,2), rep(4,2))

# Cut the data up into the given intervals and create a frequency table
f <- table(X)

# Make the cumulative sum to get cumulative frequencies.
cf <- cumsum(f)

# Make the cumulative percentages.
cp <- cumsum(prop.table(f))

# Create data.frame containing all our data.
df <- data.frame(f = f, cf = cf, cp = cp)

# Remove f.Var1 column since they are accounted for in the row names.
df <- df[,-1]

# Order columns to match the data presented in the text.
df <- df[order(-cf),]

# Remove first and last rows to match book data.
df <- df[!rownames(df) %in% c("4","9"),]

# Part a
df["6", "cp"]

# Part b
df["7", "cp"]

# # Part c
# quantile(X, .2)
# 
# # Part d
# quantile(X, .66)



# ---------------------------------------------------------------------
# Problem 20 page 65.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
X <- c(rep(16,18),rep(15,5), rep(14,8), rep(13,6), rep(12,4), rep(11,9))

# Cut the data up into the given intervals and create a frequency table
f <- table(X)

# Make the cumulative sum to get cumulative frequencies.
cf <- cumsum(f)

# Make the cumulative percentages.
cp <- cumsum(prop.table(f))

# Create data.frame containing all our data.
df <- data.frame(f = f, cf = cf, cp = cp)

# Remove f.Var1 column since they are accounted for in the row names.
df <- df[,-1]

# Order columns to match the data presented in the text.
df <- df[order(-cf),]

# Remove "16" and "11" rows to match book data.
df <- df[!rownames(df) %in% c("11","16"),]

# Part a
df["13", "cp"]

# Part b
df["15", "cp"]

# # Part c
# quantile(X, .5)
# 
# # Part d
# quantile(X, .6)



# ---------------------------------------------------------------------
# Problem 23 page 65.
# ---------------------------------------------------------------------

# Cant figure out what the question says.



# ---------------------------------------------------------------------
# Problem 25 page 65.
# ---------------------------------------------------------------------

X <- c(36,47,14,19,65,52,47,42,11,25,28,39,32,34,58,57,22,49,22,16,33,37,23,55,44)

stem(X, scale = 2)













