# ## Challenges

# - Write a loop that prints the numbers 1 to 20.
num = 1
20.times do
  p num
  num += 1
end

# - Write a loop that prints the numbers 1 to 20 using a different approach than previously used.
num_range = 1..20
num_range.each do |value|
  p value
end

num_range.each { |value| p value }

# - Write a loop that prints only even numbers from 20 to 0.
num_range.each do |value|
  if value.even?
    p "#{value} is even"
  else
    p "#{value} is odd"
  end
end

# - Create a method that takes in an array of numbers and returns a new array with all the numbers multiplied by 5.
def multiply_by_5(arr)
  arr.each { |value| p value * 5 }
end

multiply_by_5([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

# - Create a method that takes in an array of lowercase words and capitalizes all of the words, permanently modifying the original array.
def capitalize(string_arr)
  string_arr.map { |string| p string.upcase }
end

words = %w[apple orange jeremy cheese]
words = capitalize(words)
p words

# - Create a method that takes in an array of numbers and returns the largest number in the array.
# - Create a method that takes in an array of numbers and returns the smallest number in the array.
# - Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.
# - Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.
# - Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].

# ### FIZZBUZZ
# - Write a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.
