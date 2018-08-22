class Song
  attr_accessor :name, :artist #=> these attributes are where your associations are created
  @@all = []
  
  def initialize(title)
    @name = title
    @@all << self #=> refers to the instance
  end
  
  def artist_name
    if self.artist
      artist.name #=> "artist" refers to attr_accessor in song class
    end
  end
  
end
