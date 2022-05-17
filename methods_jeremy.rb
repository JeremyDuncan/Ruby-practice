# ## Challenges

# - Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
def sum_these_numbers(num1, num2)
  p num1 + num2
end

sum_these_numbers(15, 55)

# - Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
# - Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
# - Create a method that takes in a string and determines if the string is a palindrome.

# ## Challenge: Password Checker

# ### User Stories

# You are writing the user registration page for a secure web site.
# On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

# - As a developer, I can create a method that checks for the following rules for a user ID and password:
#   - User ID and password _cannot_ be the same.
#   - User ID and password _must_ be at least six characters long.
#   - Password _must_ contain at least one of: !#$
#   - User ID _cannot_ contain the following characters: !#$ or spaces
#   - Password _cannot_ be the word "password".

# ### User Stories: Stretch

# - As a user, I can enter my user ID and password into the terminal after being prompted to find out if the they are acceptable.

# ### User Stories: Super Stretch

# - As a developer, my method ensures that the user's password _must_ contain at least one number.
