def identify_winner(team1, team2, score1, score2)
  if score1 > score2
    return team1
  else
    team2
  end
end

def get_valid_score(team)
  puts "What was #{team}'s score?"
  score = gets.chomp
  while score.to_i.to_s != score
    puts "Sorry, that is not a valid score. Please enter an integer."
    score = gets.chomp
  end
  score.to_i
end

# get team 1 name
puts "What was team 1's name?"
team1_name = gets.chomp

# get team 1 score
team1_score = get_valid_score(team1_name)

# get team 2 name
puts "What was team 2's name?"
team2_name = gets.chomp

# if team 2 name is the same as team 1 name, re-prompt
while team2_name == team1_name
  puts "Sorry, we need a different name for the second team."
  team2_name = gets.chomp
end

# get team 2 score
team2_score = get_valid_score(team2_name)

winner = identify_winner(team1_name, team2_name, team1_score, team2_score)
puts "#{winner} is the victor!"



