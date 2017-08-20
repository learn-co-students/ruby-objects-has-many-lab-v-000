class Song
	attr_accessor :artist, :name

	def initialize(name)
		@name = name
		@artist = artist
	end

	def artist_name
		@artist? self.artist.name : nil
	end
end