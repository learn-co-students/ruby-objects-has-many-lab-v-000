class Song 
  
  attr_accessor :song, :artist, :name, :all
  
  @@all = []
  
  def initialize(song, artist=nil)
    new_song = self
    @name = song
    @artist = artist
    @@all << new_song
  end
  
  def self.all
    @@all
  end 

  def name 
    @name
  end 

  def artist_name
    if @artist != nil 
      @artist.name
    else 
      nil
    end
  end

end 




