my_array = [1, 2, 3, 4, 5]

for i in my_array do
  puts i
end

##### Silly Program #####

puts 'Pick a number: '
my_num = gets.chomp.to_i

number_of_guesses = 1

puts 'Now have your friend guess it: '
guess = gets.chomp.to_i

until guess == my_num do
  puts 'try again: '
  guess = gets.chomp.to_i
  number_of_guesses =+ 1
end

puts "Hm.. Not bad. It took you #{number_of_guesses} tries"

##### End of silly program #####

