require 'pry'
class Artist
  attr_accessor :name, :artist
def initialize (name)
  @name = name
  @songs = []#artist collection of songs
  @@songs = []
  @artist = artist
end
def songs
  @songs
end

def add_song(song)
  #song = Song.new(name)
  @songs << song
  song.artist= self
  #use the self keyword to refer to the artist on which we are calling this method.
  #We call the #artist= method on the song
  #that is being passed in as an argument and set it equal to self––the artist

end
def add_song_by_name(name)
  song = Song.new(name)#instantiates object Song to life and assigned to variable song
  add_song(song)
  #associates the song with artist = method & self
  #self refers an instance of the artist class,
  #what does artist method do?
  #calls artist method on song allows
  #song to to be set equal to self
end
def self.song_count
  binding.pry
  self.count
  @@song_count = self.song.count
end
end
