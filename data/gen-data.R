
# Generates 5 data files in the current folder

for (i in 1:5) {
  x <- rnorm(100)
  y <- x + rnorm(100)
  write.csv(
    data.frame(
      x = x,
      y = y
    ),
    file = sprintf('data-file-%s.csv', i),
    row.names = FALSE
  )
}
