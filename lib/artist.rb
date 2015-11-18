require 'pry'
class Artist

attr_accessor :name, :songs, :artist

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []

    
  end 

  def add_song(song)
    @@song_count+=1
    self.songs << song
    song.artist = self
 
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def self.song_count
    @@song_count 
  end 

end


