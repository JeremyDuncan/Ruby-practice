# ## Challenges

# - Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
def sum_these_numbers(num1, num2)
  p num1 + num2
end

sum_these_numbers(15, 55)

# - Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
def is_even(num)
  if num.even?
    true
  else
    false
  end
end

p is_even(10) # true
p is_even(7)  # false

# - Create a method that takes a number as an argument and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
def between_one_and_ten(num)
  if num >= 1 && num <= 10
    puts 'Valid'
  else
    puts 'Invalid'
  end
end

between_one_and_ten(7)
between_one_and_ten(22)

# - Create a method that takes in a string and determines if the string is a palindrome.
def is_palindrome(string)
  if string == string.reverse
    p "#{string} is a palindrome"
  else
    p "#{string} is not a palindrome"
  end
end
is_palindrome('racecar')
is_palindrome('hello')

# ## Challenge: Password Checker
# ### User Stories
# You are writing the user registration page for a secure web site.
# On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:
# - As a developer, I can create a method that checks for the following rules for a user ID and password:
#   - User ID and password _cannot_ be the same.
#    - User ID and password _must_ be at least six characters long.
#   - Password _must_ contain at least one of: !#$
#   - User ID _cannot_ contain the following characters: !#$ or spaces
#   - Password _cannot_ be the word "password".
def check_password(user_id, password)
  if user_id == password
    p 'User ID and Password cannot be the same!'

  elsif user_id.length < 6 ||
        password.length < 6
    p 'User ID and Password must be at least six characters!'

  elsif password.count('0-9') < 1
    puts 'Your password must contain at least one number.'

  elsif !(password.include?('!') ||
          password.include?('#') ||
          password.include?('$'))
    p 'Password must contain at least one !, #, or $ in it!'

  elsif user_id.include?('!') ||
        user_id.include?('#') ||
        user_id.include?('$') ||
        user_id.include?(' ')
    p 'User ID cannot have !, #, or $ in it!'

  elsif password.include?('password')
    p "Password cannot contain 'password'!"

  else
    p "User ID #{user_id} and password #{password} are valid."
  end
end

# Tests//////////////////////////////
check_password('jduncan!', '1jduncan!!')
check_password('jduncan', 'password')
check_password('jduncan', 'jduncan')
check_password('jasdasad', 'ada')
check_password('jduncan', 'password1234')
check_password('jduncan', 'password!')
check_password('jduncan', '#6asdAPSSPD')
# ### User Stories: Stretch

# - As a user, I can enter my user ID and password into the terminal after being prompted to find out if the they are acceptable.

# ### User Stories: Super Stretch

# - As a developer, my method ensures that the user's password _must_ contain at least one number.
