# Set seed for reproducibility
set.seed(123)

# Generate 25 random baking times from N(45, 2)
baking_times <- rnorm(25, mean = 45, sd = 2)

# View the sample
print(baking_times)

# Perform one-sided t-test
t.test(baking_times, mu = 46, alternative = "less")
