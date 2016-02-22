puts "So, from 0 to 10, what was your final exam's grade?"

score = gets.chomp.to_i

result = case score
when 10 then "WOW! Such a liar."
when 8..9 then "Hmm.. doubtful."
when 5..7 then "Mediocre. At best."
when 0..4 then "Go back to school!"
else "You're trying to fool me."
end

puts result
system "cowsay -f vader-koala \" TELL ME THE TRUTH THIS TIME!!! \" " 