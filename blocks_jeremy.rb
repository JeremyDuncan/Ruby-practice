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
def get_largest(num_arr)
  largest = 0
  num_arr.each do |number|
    largest = number if number > largest
  end
  p "#{largest} is the largest number."
end

numbers = [10, 14, 11, 2, 3, 31, 12]
get_largest(numbers)

# - Create a method that takes in an array of numbers and returns the smallest number in the array.
def get_smallest(num_arr)
  smallest = num_arr[0]
  num_arr.each do |number|
    smallest = number if number < smallest
  end
  p "#{smallest} is the smallest number."
end

numbers = [10, 14, 11, 2, 3, 31, 12]
get_smallest(numbers)

# - Create a method that takes in an array of numbers and returns only the odd numbers sorted from least to greatest.
def sort_odd(num_arr)
  p (num_arr.select { |number| number.odd? }).sort
end

numbers = [19, 19, 19, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
sort_odd(numbers)

# array.select { |number| number > 3 } # => [4, 5, 6]

# - Create a method that takes in an array of strings and returns all the strings in reverse casing. All uppercased letters should be returned lowercased and all lowercased letters should be returned uppercased.
# - Create a method that takes in an array of words and returns all the words that start with a particular letter. Ex) Given the array ['Apple', 'Avocado', 'Banana', 'Mango'] and the letter 'a' the method should return ['Apple', 'Avocado']. With the same method, given the letter 'm' should return ['Mango'].

# ### FIZZBUZZ
# - Write a method that prints the numbers from 1 to 100. For multiples of three print Fizz instead of the number, for multiples of five print Buzz instead of the number, for numbers that are multiples of both three and five print FizzBuzz, for all other numbers print the number.
