class Song
	require 'pry'
attr_accessor :artist, :name

def initialize (name)
	@name = name
end

def artist_name
	#binding.pry
	self.artist ? self.artist.name : self.artist
end	

end