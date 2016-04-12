require 'pry'

class Artist

attr_accessor :artist, :name
@@song_count = 0

def initialize(name)
  @name = name
  @songs = []

end

def songs
  @songs
end


def add_song(song)
  @songs << song
  song.artist = self
  @@song_count = @@song_count += 1
end

def add_song_by_name(song_name)
 new_song =  Song.new(song_name)
 new_song.artist = self
 @songs << new_song
 @@song_count = @@song_count += 1
end

def self.song_count

  @@song_count
end

end

##I need to define the artist method for this new song . Also name
###name is the song, whereas artist is the object for the songs artist. 