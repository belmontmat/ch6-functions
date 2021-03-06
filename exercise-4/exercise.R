# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string1,string2){
  length_diff <- abs(nchar(string1)-nchar(string2))
  sstring <- min(nchar(string1),nchar(string2))
  return(length_diff >= sstring)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
rtrue <- is_twice_as_long("funner","fun")
rfalse <- is_twice_as_long("fun","fund")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1,string2){
  ns1 <- nchar(string1)
  ns2 <- nchar(string2)
  difference <- abs(ns1 - ns2)
  if(ns1 > ns2){
    return(paste("Your first string is longer by ",difference, "characters"))
  } else if(ns2 > ns1){
    return(paste("Your second string is longer by ",difference, "characters"))
  } else {
    return("Your strings are the same length!")
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
equal <- describe_difference("fun","run")
string1_bigger <- describe_difference("then","the")
string2_bigger <- describe_difference("the","then")

