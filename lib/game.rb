# frozen_string_literal: true

require 'show'
require 'board'
require 'boardcase'
require 'player'

class Game 
	attr_reader :current_player, :players, :status, :board
	# @@parties = 0
#compteur de parties et compteurs de victories
	def initialize
		# @@parties += 1
		# puts "Partie numero #{@@parties}"
		@board = Board.new
		names = Show.new.names
		names[0] = Player.new(names[0], "X")
		names[1] = Player.new(names[1], "O")
		@players = [names[0], names[1]]
		turn
	end

	def turn
		@status = @board.win # On recupere le status de la partie, quelqu'un a gagne ou la grille est pleine?
		
		while @board.win == false # Si non, on lance la boucle de jeu
			@board.nb_tours.even? ? @current_player = @players[0] : @current_player = @players[1] #Tour pair, joueur 1 joue et vice-versa
			puts "\nTour Nr : #{@board.nb_tours}"
			Show.new.puts_board(@board.board) # Show affiche le boardgame
			choix = Show.new.turn(@current_player.name, @current_player.symbol) # Le joueur fait son choix
			@board.board_update(choix, @current_player.symbol) # On met a joue le boardgame
		end

		if @board.win == true # Fin de partie
			choix = Show.new.new_game(@current_player.name)
			case choix
			when "oui"
				system("ruby app.rb")
			when "non"
				Show.new.game_over
			end
		elsif @board.win == "prout" # Ex aequo
			choix = Show.new.exaequo
			case choix
			when "oui"
				Game.new
			when "non"
				Show.new.game_over
			end
		end
	end
end