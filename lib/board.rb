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
    if @board[3].content == @board[4].content == @board[5].content
    if @board[6].content == @board[7].content == @board[8].content
    if @board[0].content == @board[4].content == @board[8].content
    if @board[6].content == @board[4].content == @board[2].content
    if @board[0].content == @board[3].content == @board[6].content
    if @board[1].content == @board[4].content == @board[7].content
    if @board[2].content == @board[5].content == @board[8].content 

end

  def to_views
    @nb_tours
    @
    
end

nouveau = Board.new
binding.pry
