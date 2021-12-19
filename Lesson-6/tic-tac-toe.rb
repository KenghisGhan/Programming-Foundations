# Tic Tac Toe
# 1. Display the initial empty 3x3 board
# 2. Ask the user to mark a square
# 3. Computer marks a square
# 4. Display the updated board state
# 5. If winner, display winner
# 6. If board is full, display tie
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(positions, delimiter=', ', conjunction='or')
  if positions.size < 2
    return positions
  elsif positions.size == 2
    return positions.join(" #{conjunction} ")
  else
    result = positions.map do |pos|
      if positions[-1] == pos
        "#{conjunction} #{pos}"
      else
        "#{pos}#{delimiter}"
      end
    end
    result.join
  end
end

def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}."
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def place_piece!(brd, current_player)
  player_places_piece!(brd) if current_player == "Player"
  computer_places_piece!(brd) if current_player == "Computer"
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt 'Sorry, that\'s not a valid choice.'
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end

  if brd[5] == INITIAL_MARKER
    square = 5
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def alternate_player(current_player)
  if current_player == "Player"
    return "Computer"
  else
    return "Player"
  end
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def game_over?(p_score, c_score)
  p_score == 5 || c_score == 5
end

loop do
  p_score = 0
  c_score = 0

  prompt "Who goes first? Player or Computer? (p or c)"
  prompt "If you'd like the computer to choose, enter x"
  player_one = gets.chomp.downcase[0]
  player_one = ['p', 'c'].sample if player_one == 'x'

  loop do
    board = initialize_board
    display_board(board)
    if player_one == 'p'
      current_player = "Player"
    else
      current_player = "Computer"
    end
    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      winner = detect_winner(board)
      p_score += 1 if winner == "Player"
      c_score += 1 if winner == "Computer"
      prompt "#{winner} won!"
    else
      prompt 'It\'s a tie!'
    end
    break if game_over?(p_score, c_score)
  end

  prompt "Player wins the match!" if p_score == 5
  prompt "Computer wins the match!" if c_score == 5

  prompt 'Play again? (y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thanks for playing Tic-Tac-Toe! Good bye!'