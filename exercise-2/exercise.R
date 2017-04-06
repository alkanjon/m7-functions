# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vec1, vec2){
  N <- length(vec1) - length(vec2)
  answer <- c("The difference in lengths is",abs(N))
  return(answer)
}

# Pass two vectors of different length to your `CompareLength` function
one <- 10:20
two <- 100:200
CompareLength(one, two)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vec1, vec2){
  first <- length(vec1) - length(vec2)
  second <- length(vec2) - length(vec1)
  if (first > second){
    return(c("Your first vector is longer by ",first," elements"))
  } else if(second > first) {
    return(c("Your second vector is longer by ",second," elements"))
  } else {
    return("they are of equal length")
  }
}

# Pass two vectors to your `DescribeDifference` function
a1 <- 10:20
a2 <- 20:35
DescribeDifference(a1, a2)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(vec1, vec2){
  first <- length(vec1) - length(vec2)
  second <- length(vec2) - length(vec1)
  if (first > second){
    return(c("Your first vector is longer"))
  } else if(second > first) {
    return(c("Your second vector is longer"))
  } else {
    return("they are of equal length")
  }
}