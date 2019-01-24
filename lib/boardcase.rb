class Case
	attr_accessor :content, :position
	@@all_case = []

	def initialize(contenu, position)
		@content = contenu
		@position = position
		@@all_case << self
	end

	def change_content(nouveausymbol)
		@content = nouveausymbol
	end

	def self.find_by_name(position)
		@@all_case.each do |tamere|
			return tamere if tamere.position == position
		end
	end
end
