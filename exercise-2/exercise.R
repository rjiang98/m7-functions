# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b){
  answer <- paste("The difference in lengths is ", length(a) - length(b))
  return (answer)
}

# Pass two vectors of different length to your `CompareLength` function
test1 <- c("a", "b")
test2 <- c(1, 2)
CompareLength(test1, test2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b){
  if (length(a) - length(b) > 0) {
    return (paste("Your first vector is longer by", length(a) - length(b), "elements"))
  } else {
    return (paste("Your second vector is longer by", length(b) - length(a), "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(test1, test2)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(a, b){
  if (length(a) - length(b) > 0) {
    return (paste(deparse(substitute(a)), " is longer by", length(a) - length(b), "elements"))
  } else {
    return (paste(deparse(substitute(b)), " is longer by", length(b) - length(a), "elements"))
  }
}
