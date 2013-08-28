# get team 1 name
puts "What was team 1's name?"
team1_name = gets.chomp

# get team 1 score
puts "What was team 1's score?"
team1_score = gets.chomp
# make sure team 1's score is an integer
while team1_score.to_i.to_s != team1_score
  puts "Sorry, that is not a valid score. Please enter an integer."
  team1_score = gets.chomp
end
team1_score.to_i

# get team 2 name
puts "What was team 2's name?"
team2_name = gets.chomp

# if team 2 name is the same as team 1 name, re-prompt
while team2_name == team1_name
  puts "Sorry, we need a different name for the second team."
  team2_name = gets.chomp
end

# team 2 score
puts "What was team 2's score?"
team2_score = gets.chomp
# make sure team 2's score is an integer
while team2_score.to_i.to_s != team2_score
  puts "Sorry, that is not a valid score. Please enter an integer."
  team2_score = gets.chomp
end
team2_score.to_i

# compare scores and declare winner
if team1_score > team2_score
  puts "#{team1_name} is the victor!"
else
  puts "#{team2_name} is the victor!"
end
