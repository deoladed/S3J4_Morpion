

class Show

	def initialize
		puts "Joueur 1, quel est ton nom ?"
		nom1 = gets.chomp
		puts "Joueur 2, quel est ton nom ?"
		nom2 = gets.chomp
		return names = [nom1, nom2]
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