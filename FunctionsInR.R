# First function in R

add_precent <- function(my_number, multiplier, digits) 
  {
  #Multiply the number by 100, and only show 1 digit
  percent <- round(my_number * multiplier, digits)
  result <- paste(percent, "%", sep = "")
  
  return(result)
}

#Test the functions
sample_vector <- c(0.458, 1.663, 0.8654)
add_precent(sample_vector, 100, 2)

my_result <- add_precent(sample_vector, 2,3)
my_result

statistics <- function(number, parametric, Printaccess)
{
  if(parametric)
  {
    mean_value <- mean(number)
    standard <- sd(number)
  }
  else
  {
    median_value <- median(number)
    median_absoulate <- mad(number)
  }
  if(Printaccess & parametric)
  {
    cat("Mean = ", mean_value, "\n", "SD =", standard, "\n")
  }
  else if (Printaccess & !parametric)
  {
    cat("Median = ", median_value, "\n", "MAD = ", median_absoulate, "\n")
  }
}

sample_vector <- c(0.458, 1.663, 0.8654)

result <- statistics(sample_vector, FALSE, TRUE)


