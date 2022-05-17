### Challenges

### Arithmetic Challenges =============================
# Remember that floats are numbers with a decimal point whereas integers have no fractional part so in Ruby, 1 and 1.0 are different types of things with slightly different behaviors.
# - Add, subtract, multiply and divide some numbers and floats.
puts 2 + 5
puts 2 - 5
puts 2 * 4
puts 3.5 * 7.2
puts 10 / 2
puts 12.4 / 22

# - Find the remainder of dividing two numbers using the modulo operator (%).
p 10 % 2

# - Divide a number by 0.
#==> 1/0 # uncaught exception

# - Divide 0 by 0.
#==> 0/0 # uncaught exception

### Variables Challenges ===========================
# - Set a variable called my_favorite_number equal to your favorite number
my_favorite_number = 7
p my_favorite_number

# - Calculate your favorite number divided by 2
p my_favorite_number / 2

# - Set another variable called someones_favorite equal to 13
someones_favorite = 13
p someones_favorite

# - Change the value of someones_favorite to 7
someones_favorite = 7
p someones_favorite

# - Subtract my_favorite_number from someones_favorite
p my_favorite_number - someones_favorite

# - Change the value of my favorite number to be 26 times its current value
p my_favorite_number * 26

### Strings Challenges ============================
# - Create a variable and return it in a sentence string interpolation
my_name = 'Jeremy'
p "#{my_name} is a hard worker."

# - Create a variable that contains a string and test some of the Ruby string methods
test_string = 'this is my test string.'
p test_string

#  - .upcase
p test_string.upcase

#  - .reverse
p test_string.reverse

#  - .include?
p test_string.include?('test')

# - .capitalize
p test_string.capitalize

### Arrays Challenges
# - Create an array that contains the name of at least five TV shows
tv_shows = ['Seinfeld', '30 Rock', 'Robot Chicken', 'Wanda Vision', 'The Office']
puts tv_shows
p tv_shows

# - Find the length of the array
p tv_shows.length

# - Return the first item in the array
p tv_shows.first

# - Return the fourth item in the array
p tv_shows[3]

# - Permanently reverse the order of the array
tv_shows = tv_shows.reverse
p tv_shows

# - Create a new empty array for your top favorite TV shows
new_shows = []

# - From the full TV show array, add your top two favorite shows to the empty array
new_shows[0] = tv_shows[0]
new_shows[1] = tv_shows[1]
p new_shows
