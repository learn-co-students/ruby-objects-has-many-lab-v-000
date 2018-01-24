class Artist
	attr_accessor :name, :songs, :artists
	@@artists = []
	@@song_count = []
	def initialize(name)
		@name = name
		@songs = []
		@@artists << self
	end

	def add_song(song)
		song.artist = self
		@songs << song
	end

	def add_song_by_name(song_string)
		song = Song.new(song_string)
		song.artist = self
		@songs << song
	end

	def self.song_count
		@@song_count = @@artists.map {|f| f.songs.count}.reduce(:+)
	end
end