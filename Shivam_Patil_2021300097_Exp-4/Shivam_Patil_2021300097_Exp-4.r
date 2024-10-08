# Create 'output' directory if it doesn't exist
if (!dir.exists("output")) {
  dir.create("output")
}

# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load data
data <- read.csv("crime.csv")

# Plot the data
# Plot 1: Bar plot of the number of crimes in each category
ggplot(data, aes(x = Category)) +
  geom_bar() +
  xlab("Category") +
  ylab("Number of Crimes") +
  ggtitle("Number of Crimes in Each Category")

# Save the plot in the 'output' folder
ggsave("output/plot1.png")
