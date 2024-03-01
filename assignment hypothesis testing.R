#1)
peroform_one_sample_t_test<-function(sample_data, population_mean, alpha=0.05){
  sample_mean<-mean(sample_data)
  sample_sd<-sd(sample_data)
  n<-length(sample_data)
  t_statistic<-(sample_mean - population_mean)/(sample_sd/sqrt(n))
  df<-n-1
  p_value<-2*pt(abs(t_statistic),df=df, lower.tail = FALSE)
  reject_null<-p_value<alpha
  result<-list(
    t_statistic=t_statistic,
    p_value=p_value,
    reject_null=reject_null
  )
  return(result)
}
sample_data<-c(25,28,30,32,27,29,31,33,28,30)
population_mean<-30
alpha<-0.05
test_result<-peroform_one_sample_t_test(sample_data,population_mean,alpha)
print(test_result)

#3)
# Load iris dataset
data(iris)

# Sample size per species (adjust as needed)
sample_size <- 25

# Randomly select sample_size observations for each species
set.seed(123)  # for reproducibility
setosa_indices <- sample(which(iris$Species == "setosa"), sample_size)
versicolor_indices <- sample(which(iris$Species == "versicolor"), sample_size)
virginica_indices <- sample(which(iris$Species == "virginica"), sample_size)

# Create paired observations
paired_data <- data.frame(
  Before = c(iris$Sepal.Length[setosa_indices],
             iris$Sepal.Length[versicolor_indices],
             iris$Sepal.Length[virginica_indices]),
  After = c(iris$Sepal.Length[setosa_indices] + rnorm(sample_size, mean = 0, sd = 0.2),  # Simulating treatment effect
            iris$Sepal.Length[versicolor_indices] + rnorm(sample_size, mean = 0, sd = 0.2),
            iris$Sepal.Length[virginica_indices] + rnorm(sample_size, mean = 0, sd = 0.2))
)

# Perform paired t-test
result <- t.test(paired_data$Before, paired_data$After, paired = TRUE)

# Extract t-statistic, p-value, and decision
t_statistic <- result$statistic
p_value <- result$p.value
reject_null <- result$p.value < 0.05  # Using alpha = 0.05 as significance level

# Output results
cat("Paired t-test results:\n")
cat("T-Statistic:", t_statistic, "\n")
cat("P-Value:", p_value, "\n")
cat("Decision on Null Hypothesis (at alpha = 0.05):", ifelse(reject_null, "Reject Null Hypothesis", "Fail to Reject Null Hypothesis"), "\n")


#4
perform_anova <- function(dataset, group_var, response_var) {
  # Perform ANOVA
  result <- aov(as.formula(paste(response_var, "~", group_var)), data = dataset)
  
  # Extract F-statistic, p-value
  f_statistic <- summary(result)[[1]]$`F value`[1]
  p_value <- summary(result)[[1]]$`Pr(>F)`[1]
  
  # Determine if null hypothesis is rejected
  reject_null <- p_value < 0.05  # Using alpha = 0.05 as significance level
  
  # Return results
  result <- list(
    f_statistic = f_statistic,
    p_value = p_value,
    reject_null = reject_null
  )
  
  return(result)
}

# Example usage:
# Assuming 'dataset' is your dataset with columns 'group_var' and 'response_var'
# Replace 'group_var' and 'response_var' with your actual column names

# result <- perform_anova(dataset, "group_var", "response_var")

#5.
# Sample dataset
sample_data <- c(12, 15, 18, 20, 22, 25, 18, 20, 22, 20, 18, 22)

# Mean calculation
mean_value <- mean(sample_data)

# Median calculation
median_value <- median(sample_data)

# Mode calculation
mode_value <- function(x) {
  unique_x <- unique(x)
  freq <- tabulate(match(x, unique_x))
  mode_index <- which.max(freq)
  return(unique_x[mode_index])
}
mode_value <- mode_value(sample_data)

# Output results
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")

#6.
calculate_percentiles <- function(data) {
  # Calculate percentiles
  percentiles <- quantile(data, c(0.25, 0.5, 0.75))
  
  # Extract values
  q1 <- percentiles["25%"]
  median_value <- percentiles["50%"]
  q3 <- percentiles["75%"]
  
  # Return results
  result <- list(
    Q1 = q1,
    Median = median_value,
    Q3 = q3
  )
  
  return(result)
}

# Example usage:
sample_data <- c(12, 15, 18, 20, 22, 25, 18, 20, 22, 20, 18, 22)
percentiles_result <- calculate_percentiles(sample_data)
print(percentiles_result)

#7.
# Sample dataset
sample_data <- c(12, 15, 18, 20, 22, 25, 18, 20, 22, 20, 18, 22)

# Calculate standard deviation
standard_deviation <- sd(sample_data)

# Calculate variance
variance <- var(sample_data)

# Output results
cat("Standard Deviation:", standard_deviation, "\n")
cat("Variance:", variance, "\n")

#8.
# Example data for two groups
group1 <- c(25, 28, 30, 32, 27, 29, 31, 33, 28, 30)
group2 <- c(20, 22, 24, 26, 21, 23, 25, 27, 22, 24)

# Perform independent t-test
result <- t.test(group1, group2)

# Print the results
print(result)

#chi square testing
perform_chi_square_test <- function(observed_table) {
  # Perform chi-square test
  chi_sq_result <- chisq.test(observed_table)
  
  # Return the results
  return(chi_sq_result)
}

# Example data for two categorical variables
observed <- matrix(c(30, 10, 15, 25), nrow = 2, byrow = TRUE)
rownames(observed) <- c("Group A", "Group B")
colnames(observed) <- c("Outcome 1", "Outcome 2")

# Perform chi-square test using the function
result <- perform_chi_square_test(observed)

# Print the results
print(result)

  
