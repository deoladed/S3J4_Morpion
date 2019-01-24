require 'bundler'
Bundler.require


class Board
  attr_accessor : 
  
  def initialize
    @board = [A1 = Case.new(" "), A2.case.new(" "), A3.Case.new(" ")), B1.Case.new(" "), B2.Case.new(" "), B3.Case.new(" "), C1.Case.new(" "), C2.Case.new(" "), C3.Case.new(" ")]
    @nb_tours = 0 
 end

  def nb_tours
    @nb_tours += 1
  end

  def board_update(case_chosen, symbol)
    @board[case_chosen].change_content(symbol)
  end
  
  def win
    if @board[0].content == @board[1].content == @board[2].content
      return true
    if @board[3].content == @board[4].content == @board[5].content
      return true
    if @board[6].content == @board[7].content == @board[8].content
      return true
    if @board[0].content == @board[4].content == @board[8].content
      return true
    if @board[6].content == @board[4].content == @board[2].content
      return true
    if @board[0].content == @board[3].content == @board[6].content
      return true
    if @board[1].content == @board[4].content == @board[7].content
      return true
    if @board[2].content == @board[5].content == @board[8].content 
      return true
    else
      return false
  end

  def puts_board_V1
    puts " " + "1" + "2" + "3 "
    puts "A" + @board[0] + @board[1] + @board[2]
    puts "B" + @board[3] + @board[4] + @board[5]
    puts "C" + @board[6] + @board[7] + @board[8]
  end 

end

end
