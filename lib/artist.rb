class Artist
	attr_accessor :name, :songs, :artist

	@@song_count = 0

	def initialize(name)
		self.name = name
		self.songs = []
	end

	def add_song(song_title)
		self.songs << song_title
		song_title.artist = self
		@@song_count+=1
	end

	def add_song_by_name(song_title)
		song = Song.new(song_title)
		self.songs << song
		song.artist = self
		@@song_count+=1
	end

	def self.song_count
		@@song_count
	end

end
