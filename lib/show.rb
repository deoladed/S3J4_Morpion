class Show

	attr_accessor :names

	def names
		puts "Joueur 1, quel est ton nom ?"
		nom1 = gets.chomp
		puts "Joueur 2, quel est ton nom ?"
		nom2 = gets.chomp
		return @names = [nom1, nom2]
	end

	def turn(currentplayer, symbol)
		puts "\n#{currentplayer} (#{symbol}), c'est a toi de jouer"
		puts "Choisi une case"
		a = gets.chomp
		unless a == "A1" || a == "A2" || a == "A3" || a == "B1" || a == "B2" || a == "B3" || a == "C1" || a == "C2" || a == "C3"
			puts "T'as un petit cote Riberry quand t'ecris!!!!!"
			Launchy.open("http://bescherelletamere.fr/wp-content/uploads/2014/06/d6616875-1b36-4f7f-b821-9c73c3acf2f1_high.jpg")
			sleep(5)
			puts "\nEssai encore"
			turn(currentplayer, symbol)
		else
			return a
		end
	end

	def new_game(currentplayer)
		Launchy.open("https://www.youtube.com/watch?v=_e61lGbGeu8") 
		sleep(5)
		puts "Bravo #{currentplayer} tu as gagne"
		puts "\nAssez deconne, on refait une partie ? (oui/non)"
		a = gets.chomp
		unless a == "oui" || a == "non"
			puts "T'as un petit cote Riberry quand t'ecris!!!!!"
			Launchy.open("http://bescherelletamere.fr/wp-content/uploads/2014/06/d6616875-1b36-4f7f-b821-9c73c3acf2f1_high.jpg")
			sleep(5)
			puts "\nEssai encore"
			new_game(currentplayer)
		else
			return a
		end
	end

	def game_over
		Launchy.open("https://www.youtube.com/watch?v=pM2qjHTZdeI")
		sleep(5)
		puts "Merci au revoir"
	end

	def exaequo
			puts "\nExaequo les gars!"
			sleep(1)
			Launchy.open("https://www.youtube.com/watch?v=XE73XoW5rRM")
			puts "On refait une partie ?"
			a = gets.chomp
		unless a == "oui" || a == "non"
			puts "T'as un petit cote Riberry quand t'ecris!!!!!"
			Launchy.open("http://bescherelletamere.fr/wp-content/uploads/2014/06/d6616875-1b36-4f7f-b821-9c73c3acf2f1_high.jpg")
			sleep(5)
			puts "\nEssai encore"
			new_game(currentplayer)
		else
			return a
		end
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