# ---------------------------------------------------------------------
# Statistics for the Behavioral Sciences (Chapter 2).
# Figure 2.2, page 43.
# ---------------------------------------------------------------------

# Create vectors with variable names provided by the text. 
X <-  c(5,5,4,4,4,3,3,3,3,2,2,1)

# For a histogram
graph <- hist(X)
plot(graph)

# For a bar plot
### Need to use bar plot to get copy from book since hist() function is not broken down by each value.
### Found this idea at https://www.statmethods.net/graphs/bar.html
# table() function creates contingency table which shows the distribution of variables.
counts <- table(X)
graph <- barplot(counts, main = "Frequency distribution histogram", xlab = "Quiz scores (number correct)",
                 ylab = "Frequency")


# ---------------------------------------------------------------------
# Figure 2.3, page 43.
# ---------------------------------------------------------------------

# Create vectors with variable names provided by the text.
### Need them to be character strings since we do not have the original data.
X <- c("30 31", "30 31", "32 33", "32 33", "32 33", "32 33", "34 35", "34 35", "34 35", "36 37", "36 37",
       "38 39", "38 39", "38 39", "38 39", "38 39", "38 39", "40 41", "40 41", "40 41", "42 43", "42 43",
       "44 45")

# For a bar plot
counts <- table(X)
graph <- barplot(counts, main = "Frequency distribution histogram", xlab = "Children's heights (in inches)",
                 ylab = "Frequency")


# ---------------------------------------------------------------------
# Figure 2.5, page 44.
# ---------------------------------------------------------------------

# Create vectors with variable names provided by the text.
X <- c(6,5,5,4,4,3,3,3,3,2,2,1)
counts <- table(X)

### Having trouble creating this plot. None of the below work.
plot(lines(X))
plot(counts)

### Maybe just show the use of density plots although not exactly what the book shows.
d <- density(X)
plot(d)


# ---------------------------------------------------------------------
# Figure 2.7, page 45.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
# Example of using rep() function to replicate elements.
X <- c(rep("A", 10), rep("B", 5), rep("C", 20))


counts <- table(X)
graph <- barplot(counts, xlab = "Personality type", ylab = "Frequency",
                 col = c("black", "dark gray", "gray"), border = NA)



# ---------------------------------------------------------------------
# Figure 2.9, page 45.
# ---------------------------------------------------------------------

### Want to include this little intro to normal distributions since they are important.

# Create normal distribtuion vector.
X <- rnorm(n = 100000, mean = 100, sd = 15)

# Create density plot of normal distribtuion.
d <- density(X)
plot(d, xlab = "IQ scores", main = NA)

# Create shading under distribtuion.
polygon(d, col = "gray")


# ---------------------------------------------------------------------
# Box 2.1, page 47.
# ---------------------------------------------------------------------

# Create data.frame with variable names provided by the text.
df <- data.frame(Year = c(2011, 2012, 2013, 2014), Number_of_Homocides = c(42, 44, 47, 49))

# Create graphs to show how changing the axis alone can change how data is interpreted.
barplot(df$Number_of_Homocides, df$Year, xlab = "Year", ylab = "Number of homicides", 
        names.arg = df$Year, ylim = c(40,50), xpd = FALSE)

barplot(df$Number_of_Homocides, df$Year, xlab = "Year", ylab = "Number of homicides",
        names.arg = df$Year, ylim = c(0,60))



# ---------------------------------------------------------------------
# Example 2.8, page 54.
# ---------------------------------------------------------------------

# Create data.frame with variable names provided by the text.
df <- data.frame(X = c(10,9,8,7,6,5), f = c(2,8,4,6,4,1), cf = c(25,23,15,11,5,1), 
                 cp = c(1,.92,.6,.44,.2,.04))

# Create data.frame showing range on both scales.
df_range <- data.frame(Scores = c(7.5,7,6.5), Percentages = c(.44, NA, .2), 
                       row.names = c("Top", "Intermediate value", "Bottom"))

# Take difference of the Top Percentage and the Bottom Percentage refering to the data.frame
difference <- df_range["Top",]$Percentages - df_range["Bottom",]$Percentages

# We want take half the difference between the top and bottom and either add or subtract from bottom or top.

# Answer taking Top Percentage minus half the difference.
answer <- df_range["Top",]$Percentages - 1/2 * difference

# Answer taking Bottom Percentage plus half the difference.
answer <- df_range["Bottom",]$Percentages + 1/2 * difference


# ---------------------------------------------------------------------
# Example 2.9, page 54.
# ---------------------------------------------------------------------

# Create data.frame with variable names provided by the text.
df <- data.frame(X = c(24,19,14,9,4), f = c(2,3,3,10,2), cf = c(20,18,15,12,2), 
                 cp = c(1,.9,.75,.60,.1))

# Create data.frame showing range on both scales.
df_range <- data.frame(Scores = c(9.5,NA,4.5), Percentages = c(.6, .4, .1), 
                       row.names = c("Top", "Intermediate value", "Bottom"))

# Take difference of the Top Percentage and the Bottom Percentage refering to the data.frame
difference <- df_range["Top",]$Percentages - df_range["Bottom",]$Percentages

# We want take half the difference between the top and bottom and either add or subtract from bottom or top.

# Answer taking Top Percentage minus half the difference.
answer <- df_range["Top",]$Percentages - 1/2 * difference

# Answer taking Bottom Percentage plus half the difference.
answer <- df_range["Bottom",]$Percentages + 1/2 * difference


# ---------------------------------------------------------------------
# Table 2.3, page 57.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
Data <- c(82,62,71,76,85,32,56,74,82,93,68,52,42,57,73,81,63,78,33,97,46,59,74,76)

# Create steam and leaf plot
stem(Data, scale = 2)



# ---------------------------------------------------------------------
# Demonstration 2.1, page 60.
# ---------------------------------------------------------------------

# Create vector with variable names provided by the text.
Data <- c(14,8,27,16,10,22,9,13,16,12,10,9,15,17,6,14,11,18,14,11)

# Cut the data up into the given intervals and create a frequency table
f <- table(cut(Data, breaks = c(5,9,14,19,24,29)))

# Make the cumulative sum to get cumulative frequencies.
cf <- cumsum(f)

# Make the cumulative percentages.
cp <- cumsum(prop.table(f))

# Create data.frame containing all our data.
answer <- data.frame(f = f, cf = cf, cp = cp)

# Remove f.Var1 column since they are accounted for in the row names.
answer <- answer[,-1]

# Order columns to match the data presented in the text.
answer <- answer[order(-cf),]
