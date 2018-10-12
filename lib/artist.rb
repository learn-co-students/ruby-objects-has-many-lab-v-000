require 'pry'

class Artist
  attr_accessor :name, :songs
 
  #@@all = []
 
  def initialize(name)
    @name = name
    @songs = []
  end
 
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
 
  def songs
    @songs
    binding.pry
  end

  # def self.song_count
  #   @songs.each do |x|
  #     if x == @name 
  #       x.count
  #     end
  #   end
  #   #@songs.count
  # end

end