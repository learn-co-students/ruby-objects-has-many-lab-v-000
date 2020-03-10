# require "pry"
class Artist
  
  attr_accessor :name 
  attr_reader :songs
  
  # @@song_count = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  # def songs
  #   @songs
  #   # add_song_by_name(song_name)
  # end
  
  # def songs
  #   Song.all
  # end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    @songs << songs
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def self.song_count
      Song.all.length
  end
  
end















