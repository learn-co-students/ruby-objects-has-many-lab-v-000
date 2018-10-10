class Song
  attr_accessor :artist, :title, :genre
 
 @@all = []
 
  def initialize(title)
    @title = title
    @genre = genre
    @artist = artist
  end

  def artist_name
    self.artist.name
  end
  
  def self.all
    @@all 
  end

end