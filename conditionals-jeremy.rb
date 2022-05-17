## Challenge: Rock, Paper, Scissors

# **Story**: As *user 1*, I can see a prompt in the terminal asking me to type
# either "rock", "paper", or "scissors".
puts "Player 1's turn"
puts 'Select from the following:'
puts '(1) Paper (2) Rock (3) Scissors'
selection1 = gets.chomp
p "you chose #{selection1}"

# **Story**: As *user 2*, I can see a prompt in the terminal asking me to type
# either "rock", "paper", or "scissors".
puts "Player 2's turn"
puts 'Select from the following:'
puts '(1) Paper (2) Rock (3) Scissors'
selection2 = gets.chomp
p "you chose #{selection2}"

# **Story**: As a user, I can see a message in the terminal saying if *user 1*
# or *user 2* won the round.
# **Story**: As a user, I can see a message in the terminal saying if there
# was a tie

if  (selection1 == '1' && selection2 == '2') ||
    (selection1 == '2' && selection2 == '3') ||
    (selection1 == '3' && selection2 == '1')
  puts 'player 1 wins!'
elsif (selection1 == '1' && selection2 == '3') ||
      (selection1 == '2' && selection2 == '1') ||
      (selection1 == '3' && selection2 == '2')
  puts 'player 2 wins!'
else
  puts "it's a Tie!"
end
