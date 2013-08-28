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

# initialize 
continue = "y"

while continue == "y"
  puts "What was team 1's name?"
  team1_name = gets.chomp

  team1_score = get_valid_score(team1_name)

  puts "What was team 2's name?"
  team2_name = gets.chomp

  while team2_name == team1_name
    puts "Sorry, we need a different name for the second team."
    team2_name = gets.chomp
  end

  team2_score = get_valid_score(team2_name)

  winner = identify_winner(team1_name, team2_name, team1_score, team2_score)
  puts
  puts "#{winner} is the victor!"
  puts
  puts "Would you like to provide another game? (Y/N)"
  continue = gets.chomp.downcase
  while not ["y", "n"].include? continue
    continue = gets.chomp.downcase
  end
  puts
end
