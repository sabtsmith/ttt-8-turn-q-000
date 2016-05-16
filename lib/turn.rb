def display_board (board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
     end

def valid_move?(board, position)
  position = position.to_i - 1
if position < 9 && position >= 0 && position_taken?(board, position) == false
  true
  else
  false
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == ""  || board[position] == nil
    false
 else
   true
end
end

def move(board, input, character = "X")
  input = input.to_i - 1
  board[input] = character
end

def turn(board)
  puts "Welcome to Tic Tac Toe!"
    display_board(board)
  puts "Please enter 1-9:"
input = gets.strip
  input = input.to_i - 1
  board[input] = character
  if valid_move?(board, position) == true
 move(board, input, character)
else
    turn(board)
  end
end
