VALID_CHOICES = %w(rock paper scissors spock lizard)

VALID_CHOICES_2_LETTERS = %w(ro pa sc sp li)

WINNING_AMOUNT = 5

def prompt(message)
  puts "=> #{message}"
end

def translate_first_2_letters_to_choice(str)
    first_2_letters_map = {
    ro: 'rock',
    sp: 'spock',
    li: 'lizard',
    sc: 'scissors',
    pa: 'paper'
    }
    str = str.to_sym
    answer = first_2_letters_map[str] if first_2_letters_map.key?(str)
    answer
end 

def win?(first, second)
    winning_moves = {
    rock: %w(scissors lizard),
    scissors: %w(paper lizard),
    lizard: %w(spock paper),
    paper: %w(rock spock),
    spock: %w(rock scissors)
    }
    first = first.to_sym
    winning_moves[first].include?(second) if winning_moves.key?(first)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

def increment_wins(player, computer, wins)
  wins = 0 
  wins += 1 if win?(player, computer)
  wins
end 

player_wins = 0
computer_wins = 0

loop do
  choice = ''
  loop do
    prompt("Choose one by typing the first letter of the word: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    elsif translate_first_2_letters_to_choice(choice)
      choice = translate_first_2_letters_to_choice(choice)
      break
    else
      prompt('Thats not a valid choice.')
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)
  player_wins = increment_wins(choice, computer_choice, player_wins)
  computer_wins = increment_wins(computer_choice, choice, computer_wins)
  prompt("Player wins: #{player_wins}")
  prompt("Computer wins: #{computer_wins}")
  
  break if player_wins == 5
    

  prompt('Do you want to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing! Goodbye!')
