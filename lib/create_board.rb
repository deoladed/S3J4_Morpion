# frozen_string_literal: true

def puts_board_V2
  puts '   ' + '1' + '   ' + '2' + '   ' + '3' + '  '
  puts ' +---+---+---+'
  puts ' |   |   |   |'
  puts 'A| ' + @board[0] + ' | ' + @board[1] + ' | ' + @board[2] + ' |'
  puts ' |   |   |   |'
  puts ' +---+---+---+'
  puts ' |   |   |   |'
  puts 'B| ' + @board[3] + ' | ' + @board[4] + ' | ' + @board[5] + ' |'
  puts ' |   |   |   |'
  puts ' +---+---+---+'
  puts ' |   |   |   |'
  puts 'C| ' + @board[6] + ' | ' + @board[7] + ' | ' + @board[8] + ' |'
  puts ' |   |   |   |'
  puts ' +---+---+---+'
end
