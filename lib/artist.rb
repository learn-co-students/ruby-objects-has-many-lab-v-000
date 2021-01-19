class Artist  # Has Many songs

attr_accessor :name, :song, :songs, :count
	@@count = 0
	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end

	def self.all
		@@all
	end

	def songs # artist.songs = return all songs by artist instance
		@songs
	end

# add new song object to an artist object
  def add_song_by_name(song_title) #enter string title
    song = Song.new(song_title) # initialize new song by title
    self.add_song(song)	# call add_song method to
	end     							# assign song to this artist & add to his/her collection

#artist.add_song
	def add_song(song) ### arg is song instance ###
		song.artist = self
		song.artist.songs << song
	end

#iterate thru each artist.songs array
	def self.song_count
    Song.all.count
	end
#class end below
end

#adele = Artist.new("Adele")
#adele.add_song(hello)
#Artist.new("Beyonce")
#adele.name
#adele.songs
#adele.add_song_by_name("Rolling in the Deep")
#adele.songs
#Artist.song_count
#
