welcome = "Welcome to rock, paper, scissors!"
puts welcome.upcase
puts "Type 'quit' at anytime to exit"
puts "Type in 'r', 'p' or 's' to begin"

options = ["r", "p", "s"]

human = gets.chomp.downcase
computer = options.sample

human_score = 0
comp_score = 0

while human != "quit"

  if human == computer 
  	puts "The computer chooses #{computer}."
    puts "it's a tie."
    
  elsif human == "r" && computer == "p"
  	puts "The computer chooses #{computer}."
    puts "p covers r. I win!"
    comp_score += 1
  elsif human == "p" && computer == "s"
  	puts "The computer chooses #{computer}."
    puts "s cuts p. I win!"
    comp_score += 1
  elsif human == "s" && computer == "r"
  	puts "The computer chooses #{computer}."
    puts "r crushes s. I win!"
     comp_score += 1
  elsif human == "r" && computer == "s"
  	puts "The computer chooses #{computer}."
    puts "r crushes s. You win!"
    human_score += 1
  elsif human == "p" && computer == "r"
  	puts "The computer chooses #{computer}."
    puts "p covers r. You win!"
    human_score += 1
  elsif human == "s" && computer == "p"
  	puts "The computer chooses #{computer}."
    puts "s cuts p. You win!"
   human_score += 1
  end

  puts "Your score is #{human_score}, computers score is #{comp_score}"

  if human_score == 5 || comp_score == 5
    break
  end


puts "Enter r,p,s"
human = gets.chomp.downcase

if human == "quit"
  break
end

computer = options.sample
puts computer



end

