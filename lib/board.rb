class Board
  attr_accessor :board, :nb_tours
  
  def initialize # ON cree toutes les cases
  	@A1 = Case.new(" ", "A1")
  	@A2 = Case.new(" ", "A2")
  	@A3 = Case.new(" ", "A3")
		@B1 = Case.new(" ", "B1")
		@B2 = Case.new(" ", "B2")
		@B3 = Case.new(" ", "B3")
		@C1 = Case.new(" ", "C1")
		@C2 = Case.new(" ", "C2")
		@C3 = Case.new(" ", "C3")
		@board = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3] #Et on en fait une array
		@nb_tours = 0 
	end

  def board_update(case_chosen, symbol) 
  	labonnecase = Case.find_by_name(case_chosen) # On retrouve la l'objet case a partir de son nom
  	if labonnecase.content != ' ' # Si elle n'est pas vide, on insulte le player
  		puts "TA MERE T'ES AVEUGLE OU QUOI?!!!"
  		Launchy.open("https://www.youtube.com/watch?v=_-NcftIvc3A")
  		return
  	end
  	labonnecase.change_content(symbol) # Sinon on met a jour la case et on incrmente le tour
  	@nb_tours += 1
  end
  
def win # LE conditions de fin de jeu
   if @board[0].content == @board[1].content && @board[0].content == @board[2].content && @board[0].content != " "
     return true
   elsif @board[3].content == @board[4].content && @board[3].content == @board[5].content && @board[3].content != " "
     return true
   elsif @board[6].content == @board[7].content && @board[6].content == @board[8].content && @board[6].content != " "
     return true
   elsif @board[0].content == @board[4].content && @board[0].content == @board[8].content && @board[0].content != " "
     return true
   elsif @board[6].content == @board[4].content && @board[6].content == @board[2].content && @board[6].content != " "
     return true
   elsif @board[0].content == @board[3].content && @board[0].content == @board[6].content && @board[0].content != " "
     return true
   elsif @board[1].content == @board[4].content && @board[1].content == @board[7].content && @board[1].content != " "
     return true
   elsif @board[2].content == @board[5].content && @board[2].content == @board[8].content && @board[2].content != " "
     return true
   elsif @nb_tours == 9 # Exaequo
   	return "prout"
   else
     return false
   end
 end