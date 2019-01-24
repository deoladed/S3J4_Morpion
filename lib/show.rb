

class Show

	attr_accessor :names

	def names
		puts "Joueur 1, quel est ton nom ?"
		nom1 = gets.chomp
		puts "Joueur 2, quel est ton nom ?"
		nom2 = gets.chomp
		return @names = [nom1, nom2]
	end

	def turn(currentplayer)

		puts "#{currentplayer}, c'est a toi de jouer"
		puts "Choisi une case"
		return choix = gets.chomp
	end

	def new_game(currentplayer)
			puts "Bravo #{currentplayer} tu as gagne"
			puts "On refait une partie ?"
			return choix = gets.chomp
	end

	def game_over
			puts "Merci au revoir"
	end

	def exaequo
			puts "Exaequo les gars!"
			puts "On refait une partie ?"
			return choix = gets.chomp
	end

	def puts_board(board)
	 	puts "   " + "1" + "   " + "2" + "   " + "3" + "  "
	 	puts " +---+---+---+"
	 	puts " |   |   |   |"
	 	puts "A| " + board[0].content + " | " + board[1].content + " | " + board[2].content + " |"
	 	puts " |   |   |   |"
	 	puts " +---+---+---+"
	 	puts " |   |   |   |"
	 	puts "B| " + board[3].content + " | " + board[4].content + " | " + board[5].content + " |"
	 	puts " |   |   |   |"
	 	puts " +---+---+---+"
	 	puts " |   |   |   |"
	 	puts "C| " + board[6].content + " | " + board[7].content + " | " + board[8].content + " |"
	 	puts " |   |   |   |"
	 	puts " +---+---+---+"
	end 
end