class Artist
	attr_accessor :name #setting the instance variable "name"

	@@song_count = 0

	def initialize(name)
		@name = name 
		@songs = []
	end

	def songs
		@songs #this allows the class to get the "name" when called
	end

	def add_song(song) #method which allows one to shovel new songs and relate that to the artist. also be self aware of the class variable that shows the incremental addition of a new song
		@songs << song
		song.artist = self
		@@song_count += 1
	end

	def add_song_by_name (name) #method that allows to add the song by the name of the song alone. similar thought process with add_song method
		song = Song.new(name)
		@songs << song
		song.artist = self
		@@song_count += 1
	end

	def self.song_count #getting the value of how many songs are in the song count after this song is added
		@@song_count
	end
end

