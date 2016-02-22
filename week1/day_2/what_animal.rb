puts "What animal are you?"
name = gets.chomp.downcase
if (name == "chicken" || name == "cat")
  puts "This is my favorite animal!"
else
  puts "Time to jump into the pan!"
end