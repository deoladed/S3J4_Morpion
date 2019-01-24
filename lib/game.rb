require 'view'
require 'board'
require 'boardcase'
require 'player'

class Game 
	attr_reader :current_player, :players, :status, :board

	def initialize
		@board = Board.new
		Show.new
		names[0] = Player.new(names[0], "X")
		names[1] = Player.new(names[1], "O")
		@players = [names[0], names[1]]

	end

	def turn
		@status = @board.win
		if @board.nb_tour.even?
			@current_player = @players[1]
		else
			@current_player = @players[0]
		end

		while @status == false
			choix = Show.turn(@current_player)
			@board.change_contenu(choix, @current_player.symbol)
		end

		if @status == true
			choix Show.new_game(@current_player)
			case choix
				when "oui"
					app.rb ??????????
				when "non"
					Show.gameover
				end
		elsif @status == true && @board.nb_tour == 9
			choix = Show.exaequo
			case choix
				when "oui"
					app.rb ??????????
				when "non"
					Show.gameover
				end
		end
	end




	jouer un tour
	met fin a la partie
	propose une nouvelles partie


	nb_tour
	@board