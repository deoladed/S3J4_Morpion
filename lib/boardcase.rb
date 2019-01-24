class Case
	attr_accessor :contenu

		def initialize(contenu)
			@contenu = contenu
		end

		def change_content(nouveausymbol)
			@contenu = nouveausymbol
		end
end
