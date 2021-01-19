class Song # belongs to Artist

attr_accessor :name, :artist, :songs
	@@all = []

	def initialize(title)
		@name = title
		@@all << self
		@artist = artist #tells song its artist name
	end

# sets artist as instance var & method for song
	 def artist=(artist)
	 	@artist = artist #tells song its artist name
	 	if !@artist.songs.include?(self)
	  		@artist.songs << self # add song to artist collection if not already
	 	end
	 end

# returns array of all songs created
	def self.all
		@@all
	end

# if song instance has an @artist, then
# return artist's name, else return nil
	def artist_name
		if self.artist
			 self.artist.name
		else
			nil
		end
	end

#class Song end below
end
