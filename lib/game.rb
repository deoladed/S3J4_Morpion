require 'show'
require 'board'
require 'boardcase'
require 'player'

class Game 
	attr_reader :current_player, :players, :status, :board

	def initialize
		@board = Board.new
		names = Show.new.names
		names[0] = Player.new(names[0], "X")
		names[1] = Player.new(names[1], "O")
		@players = [names[0], names[1]]
		turn
	end

	def turn
		# puts "\nTour Nr : #{@board.nb_tours}"
		# 	Show.new.puts_board(@board.board)
		# 	choix = Show.new.turn(@player[0].name)
		# 	@board.board_update(choix, @player[0].symbol)

		@status = @board.win
		
		while @board.win == false
			@board.nb_tours.even? ? @current_player = @players[1] : @current_player = @players[0]
			puts "\nTour Nr : #{@board.nb_tours}"
			Show.new.puts_board(@board.board)
			choix = Show.new.turn(@current_player.name)
			@board.board_update(choix, @current_player.symbol)
		end

		if @board.win == true
			choix Show.new.new_game(@current_player)
			case choix
			when "oui"
				app.rb
			when "non"
				Show.new.game_over
			end
		elsif @board.win == true && @board.nb_tours == 9
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


