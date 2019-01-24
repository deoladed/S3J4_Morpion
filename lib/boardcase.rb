class Case
	attr_accessor :position, :contenu

		def initialize(position, contenu)
			@position = position
			@contenu = contenu
		end

		def case
		end
	end

case = Case.new("A1", "X")
case.case