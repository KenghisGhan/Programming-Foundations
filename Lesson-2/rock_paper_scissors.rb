# In this assignment, we'll build a Rock Paper Scissors game.
# The game flow should go like this:
#   the user makes a choice
#   the computer makes a choice
#   the winner is displayed

VALID_CHOICES = %w(rock paper scissors lizard spock)
ABBREVIATIONS = %w(r p sc l sp)

def convert_abbreviation(abbreviation)
  case abbreviation
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sc'
    'scissors'
  when 'l'
    'lizard'
  when 'sp'
    'spock'
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

user_wins = 0
computer_wins = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    elsif ABBREVIATIONS.include?(choice)
      choice = convert_abbreviation(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  user_wins += 1 if win?(choice, computer_choice)
  computer_wins += 1 if win?(choice, computer_choice)

  if user_wins >= 3
    prompt("You are the grand winner!")
    break
  elsif computer_wins >= 3
    prompt("The computer is the grand winner!")
    break
  end
    
end

prompt("Thank you for playing. Good bye!")