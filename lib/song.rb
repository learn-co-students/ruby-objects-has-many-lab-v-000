class Song 
  attr_accessor :name, :artist
  # @@all keeps track of all songs
  @@all = []
  
  # initialize with name and add to all songs array
  def initialize(name)
    @name = name
    @@all << self
  end
  
  # song should be able to know who its artist is
  def artist_name
    if self.artist == nil
      nil
    else 
      self.artist.name
    end
  end
  
  # return list of all song instances
  def self.all
    @@all
  end
end