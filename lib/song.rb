class Song
	attr_accessor :name
	def initialize(name)
		@name = name
	end
	def artist(name)
		artist = Artist.new(name)
		@artist = artist
	end
	
end