class Song
  attr_accessor :name, :genre, :artist
  
  @@song = 0
  @@all = []
  
  def initialize(name)
    @name = name
    @@song += 1
    @@all << self
  end
  
  def self.song_count
    @@song
  end
  
  def artist_name
    if @artist == nil
      nil
    else self.artist.name
    end
  end
  
end