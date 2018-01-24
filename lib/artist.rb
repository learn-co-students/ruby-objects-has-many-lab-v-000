class Artist
	attr_accessor :name 

	@@artists = []
	@@song_count = 0

	def initialize(name)
		@name = name
		@songs =[]
		@@artists << self
	end

	def songs
		@songs
	end

	def add_song(song)
		@songs << song
		song.artist = self
	end

	def add_song_by_name(song)
		song_name = Song.new(song)
		song_name.artist = self
		@songs << song_name
	end

	def self.song_count
		@@artists.each do |artist|
			artist_song_total = artist.songs.length
			@@song_count += artist_song_total
		end
		@@song_count
	end

end