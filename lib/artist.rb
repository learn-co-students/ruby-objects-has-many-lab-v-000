require 'pry'
class Artist
  attr_accessor :name, :songs, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
#  @songs << song
#song = Song.new(name)
@songs << song
song.artist = self

   #name.artist = self
end

def add_song_by_name(name)
   song = Song.new(name)
   song.artist = self
   @songs << song

 end

def self.song_count
  array = Song.all
  array.length
end

end
