# ## Challenges: Practice with Hashes
# - As a developer, I can create a hash called my_phone using the Ruby method `.new`.
# my_phone = Hash.new
my_phone = {}
p my_phone

# - As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
my_phone[:"Google Maps"] = 'GPS navigation application'
my_phone[:Calculator] = 'A handy phone calculator'
my_phone[:Wordle] = 'An addictive word game'
my_phone[:"Candy Crush"] = 'A sugary treat of a game'
my_phone[:Chrome] = 'A dependable web browswer'

puts my_phone
# - As a developer, I can return a value from my_phone by passing in the name of a key.

# - As a developer, I can update two keys in my_phone.
# - As a developer, I can update two values in my_phone.
# - As a developer, I can delete two key:value pairs from my_phone.
# - As a developer, I can use an enumerable method to return information about all of my_phone's applications.

# ### Stretch Challenges
# - As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.
