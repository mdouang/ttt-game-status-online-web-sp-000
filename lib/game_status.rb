# Helper Method
def won?(board)
 WIN_COMBINATIONS.each do |win_combination|
   win_index_1 = win_combination[0]
   win_index_2 = win_combination[1]
   win_index_3 = win_combination[2]
   position_1 = board[win_index_1] # value of board at win_index_1
   position_2 = board[win_index_2] # value of board at win_index_2
   position_3 = board[win_index_3] # value of board at win_index_3
   position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
 end
end
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

Define your WIN_COMBINATIONS constant
def turn_count(board)
board.count{|token| token == "X" || token == "O"}

 turns = 0
   board.each do |token| 
     if token == "X" || token == "O"
       turns += 1
     end
   end        
   turns
 end
 def current_player(board)
   turn_count(board) % 2 == 0 ? "X" : "O"
 end

def turn_count(board)
 count the number of positions that are occupied on the board (i.e. in the board array)
    by iterating over the board array and incrementing a count variable if a position is filled 
    with an X or an O
  i = 0
  count = 0
  while i <= 9
    if board[i] == "X" || board[i] == "O"
      count += 1
    end
    i += 1
  end
  count
       turns += 1
     end
   end
   turns = 0
   board.each do |space|
     if space == "X" || space == "O"
       turns += 1
     end
   end
   turns

end

turn_count(["O", " ", " ", " ", "X", " ", " ", " ", "X"])

def current_player(board)
   first person to go is always X, so if turn count is even, then it is X turn, if turn count is odd, O turn
  turn_count(board).even? ? "X" : "O"
end 