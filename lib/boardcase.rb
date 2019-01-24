class Case
	attr_accessor :content

		def initialize(contenu)
			@content = contenu
		end

		def change_content(nouveausymbol)
			@content = nouveausymbol
		end
end
