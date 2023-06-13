
### Atomic data types

# Numbers
x <- 1
# arithmetic
x + 1 # addition
x - 1 # subtraction
x * 2 # multiplication
x / 2 # division
x ** 2 # exponentiation
1 / (2 - 0.5) # BEDMAS rules

# Text (strings)
greeting <- "hello"
greeting <- 'hello'
sentence <- 'He says "hello"'
sentence <- "I'm busy now"

# Booleans (true/false values)
bool1 <- FALSE
bool2 <- TRUE
# Short forms (careful not to overwrite!)
bool1 <- T
bool2 <- F

# Booleans as a result of comparisons
x <- 2
y <- 3
x < y
x <= y
x > y
x >= y
x == y
x != y

# Boolean operators
x <- TRUE
y <- FALSE
x & y # and
x | y # or
!y # not

# Order of operations with Booleans

# Suppose we want to know if we can publish our results. We can publish if the
# results are significant or the study was preregistered, and if we have the
# funds to publish open-access or the journal will waive open-access fee.
# Suppose we have the funds to publish open-access even though the journal won't
# waive the fee, but out results were not significant and the study was not
# preregistered. Let's create some variables to represent the situation:
funds <- TRUE # We have the funds
waive <- FALSE # The journal won't waive the fee
signif <- FALSE # Our results are not significant
prereg <- FALSE # Our study was not preregistered
# So, can we publish?
can_publish <- funds | waive & signif | prereg
print(can_publish)
# Surprisingly, the above expression says we can! Why is this? It's because the
# & operator takes precedence over the | operators, so it's evaluated first. The
# expression then reduces to TRUE | FALSE | FALSE, which evaluates to TRUE
# (regardless of which | operator is applied first). To ensure that the |
# operators are applied first, we should use brackets:
can_publish <- (funds | waive) & (signif | prereg)
print(can_publish)
# Now the result makes sense---we can't publish, but at least we know about
# Boolean order of operations!

### Collections

# vectors

x <- c(1, 2, 3, 4, 5)
y <- c(6, 7, 8)
z <- c(x, y)

a <- c()
b <- c(1, 2, 3)
d <- c(a, b)

a <- c(1, 2, 3, 'a', 'b', 'c') # Data types in vectors must all be the same
print(a) # Note that numbers are converted to text

# Storing values by name

a <- c(first = 1, second = 2, third = 3, fourth = 4)
print(a)

# Accessing values in vectors

a[3] # Single items
a[2:4] # Ranges of items
a[c(1, 3, 4)] # Specific items
a[-2] # Excluding single items
a[-2:-4] # Excluding ranges of items
a[c(-1, -3, -4)] # Excluding specific items
a['first'] # Accessing by name
a[c('first', 'second')] # Accessing multiple by name

# Storing mixed data types in lists

a <- list(1, 2, 3, 'a', 'b', 'c')
print(a)

# Accessing actual items vs sub-lists

a[[1]] # Item within list
a[1] # Subsection of list

# What's the difference?

a[[1]] + 1
a[1] + 1

# Storing items by name
a <- list(first = 1, second = 2, third = 3)
print(a)
a['first']
a[['first']]
a$first

# Selecting multiple items
a[[c('first', 'second')]] # Error!
unlist(a[c('first', 'second')])

### Conditionals

# p values example:

p <- 0.009

if (p < 0.001) {
  print('Our results are very significant!')
} else if (p < 0.01) {
  print('Our results are fairly significant')
} else if (p < 0.05) {
  print('Our results are technically significant')
} else {
  print('Our results are not significant')
}

if (p < 0.001) {
  print('Our results are very significant!')
}
if (p < 0.01) {
  print('Our results are fairly significant')
}

### Loops

# Simulate example data
n_data <- 100
x <- rnorm(n_data)
y <- x + rnorm(n_data)
plot(y ~ x)

# Compute a single bootstrap correlation
n_sample <- 50
sample_idx <- sample(1:n_data, n_sample, replace = TRUE)
sampled_x <- x[sample_idx]
sampled_y <- y[sample_idx]
cor(sampled_x, sampled_y)

# Do bootstrapped correlations in a loop
n_iters <- 200
iter_count <- 0
cors <- c()
repeat {
  # Compute bootstrap correlation
  sample_idx <- sample(1:n_data, n_sample, replace = TRUE)
  sampled_x <- x[sample_idx]
  sampled_y <- y[sample_idx]
  curr_cor <- cor(sampled_x, sampled_y)
  # Accumulate
  cors <- c(cors, curr_cor)
  # Keep count
  iter_count <- iter_count + 1
  if (iter_count == n_iters) {
    break
  }
}

# More succinctly using a while loop:
iter_count <- 0
cors <- c()
while (iter_count < n_iters) {
  sample_idx <- sample(1:n_data, n_sample, replace = TRUE)
  sampled_x <- x[sample_idx]
  sampled_y <- y[sample_idx]
  curr_cor <- cor(sampled_x, sampled_y)
  cors <- c(cors, curr_cor)
  iter_count <- iter_count + 1
}

# Yet more succinctly using a for loop
cors <- rep(NA, n_iters)
for (iter_count in 1:n_iters) {
  sample_idx <- sample(1:n_data, n_sample, replace = TRUE)
  sampled_x <- x[sample_idx]
  sampled_y <- y[sample_idx]
  curr_cor <- cor(sampled_x, sampled_y)
  cors[iter_count] <- curr_cor
}

# Example

data.file.names <- c(
  'data-file-1.csv',
  'data-file-2.csv',
  'data-file-3.csv',
  'data-file-4.csv',
  'data-file-5.csv'
)

cors <- c()
for (data.file.name in data.file.names) {
  data.file <- read.csv(data.file.name)
  cors <- c(cors, xycor(data.file))
}

### Functions

bootstrap_corr <- function(x, y, n_iters, n_samples) {
  cors <- c()
  for (i in 1:n_iters) {
    sample_idx <- sample(1:n_data, n_sample, replace = TRUE)
    cors[i] <- cor(x[sample_idx], y[sample_idx])
  }
  return(cors)
}
cors <- bootstrap_corr(x, y, 100, 50)
hist(cors)

# Default input values
bootstrap_corr <- function(x, y, n_iters = 100, n_samples = 50) {
  cors <- c()
  for (i in 1:n_iters) {
    sample_idx <- sample(1:n_data, n_sample, replace = TRUE)
    cors[i] <- cor(x[sample_idx], y[sample_idx])
  }
  return(cors)
}
cors <- bootstrap_corr(x, y)
hist(cors)

# Functions within functions

subsampled_cor <- function(x, y, n_samples) {
  sample_idx <- sample(1:n_data, n_sample, replace = TRUE)
  return(cor(x[sample_idx], y[sample_idx]))
}

bootstrap_corr <- function(x, y, n_iters = 100, n_samples = 50) {
  cors <- c()
  for (i in 1:n_iters) {
    cors[i] <- subsampled_cor(x, y, n_samples) # !!
  }
  return(cors)
}

# Local vs global variables

# Local variables do not exist outside functions
create_txt <- function() {
  txt <- 'abc'
  print(txt)
}
create_txt()
print(txt)

# Local variables can have the same names as global variables
txt2 <- 'hello'
change_txt2 <- function() {
  txt2 <- 'goodbye'
  print(txt2)
}
print(txt2)
change_txt2()
print(txt2)

# <<- can create global variables even within functions
create_txt3 <- function() {
  txt3 <<- 'abc'
}
create_txt3()
print(txt3)
