class Artist
attr_accessor :name


  @@song_count = 0 #list of song count starts at zero

def initialize(name)
@name = name
@songs = []
end

def add_song(song)
@songs << song
song.artist = self
  @@song_count +=1 # for every new song the count goes up by 1
end


def add_song_by_name(name)
song = Song.new(name)
@songs << song
song.artist = self
 @@song_count +=1 # for every new song the count goes up by 1
end

def songs
@songs
end

def self.song_count
   @@song_count # keeps track of number of songs
 end

end
