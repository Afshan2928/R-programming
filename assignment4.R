#Write a program in R that takes an input number from the user and determines whether it is even or odd using an if-else statement. Print an appropriate message.



# Get user input for the first number
num1 <- as.numeric(readline("Enter the first number: "))

# Check if the input is a valid number
if (!is.na(num1)) {
  # Get user input for the second number
  num2 <- as.numeric(readline("Enter the second number: "))
  
  # Check if the input is a valid number
  if (!is.na(num2)) {
    # Compare the two numbers using nested if-else statements
    if (num1 > num2) {
      print(paste(num1, "is greater than", num2))
    } else if (num1 < num2) {
      print(paste(num1, "is less than", num2))
    } else {
      print(paste(num1, "is equal to", num2))
    }
  } else {
    print("Invalid input for the second number. Please enter a valid number.")
  }
} else {
  print("Invalid input for the first number. Please enter a valid number.")
}
