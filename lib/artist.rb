require "pry"
class Artist 
  attr_accessor :name, :songs
  
  @@song_count = 0
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end 
  
  def songs
    @songs 
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(song)
    song = Song.new(song) 
    @songs << song 
    song.artist = self
  end
  
  def self.all
    @@all
  end 
  
  def self.song_count
    self.all.each do |artist| 
      @@song_count += artist.songs.count
      end
    @@song_count
  end

end 



