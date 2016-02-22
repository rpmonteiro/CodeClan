random_number = rand(0..100)

puts "Hello There Matey! Guess what number I have for you!"
puts "Hint: it's between 0 and 100"

def menu()
  return gets.chomp.to_i
end

guess = menu()
guess_closeness = random_number - guess
number_of_guesses = 0

until guess = random_number

  if guess = random_number
    puts "You got it!!! Not bad!!"
  elsif guess_closeness <= 3
    puts "Phew! That was close! Try again: "
    number_of_guesses =+ 1
  elsif guess_closeness > 3 && guess_closeness < 10
    puts "Hot! Try again: "
    number_of_guesses =+ 1
  elsif guess closeness > 10 && guess_closeness < 100
    puts "Cold.... Try again: "
    number_of_guesses =+ 1
  else
    guess = menu()
  end
end