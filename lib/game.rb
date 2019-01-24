require 'show'
require 'board'
require 'boardcase'
require 'player'

class Game 
	attr_reader :current_player, :players, :status, :board

	def initialize
		@board = Board.new
		@tours = @board.nb_tours
		@status = @board.win
		names = Show.new.names
		names[0] = Player.new(names[0], "X")
		names[1] = Player.new(names[1], "O")
		@players = [names[0], names[1]]
		turn
	end

	def turn
		
		if @tours % 2 == 0
			@current_player = @players[1]
		else
			@current_player = @players[0]
		end

		while @status == false
			puts "Tour Nr : #{@board.nb_tours}"
			Show.new.puts_board(@board.board)
			choix = Show.new.turn(@current_player.name)
			@board.board_update(choix, @current_player.symbol)
		end

		if @status == true
			choix Show.new.new_game(@current_player)
			case choix
			when "oui"
				app.rb
			when "non"
				Show.new.game_over
			end
		elsif @status == true && @board.nb_tours == 9
			choix = Show.new.exaequo
			case choix
			when "oui"
				app.rb
			when "non"
				Show.new.game_over
			end
		end
	end
end


