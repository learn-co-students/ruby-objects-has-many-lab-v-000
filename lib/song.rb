require 'pry'

class Song
  attr_accessor :artist, :name
  @@all = []
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(name)
    @name = name
    self.save
  end
  
  def add_song_by_name(name)
    song = self.new(name)
    @@all << song
  end
  
  def artist_name
    if artist == nil
      nil
    else self.artist.name
    end
  end
  
end