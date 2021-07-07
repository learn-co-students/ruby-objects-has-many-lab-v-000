class Song
	attr_accessor :name, :artist, :count

	@@count = 0

	def initialize(name)
		@name = name
		@@count += 1
	end

	def song_count
		@@count
	end

	def artist_name
		self.artist.name if self.artist
	end
end