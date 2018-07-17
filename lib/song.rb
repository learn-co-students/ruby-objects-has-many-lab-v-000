class Song
  attr_accessor :name, :artist #each song belongs to the artist class

  @@all = [] #create empty array (class var) to hold all of the instances

  def initialize(name)
    @name = name
    #@artist = artist
    @@all << self #push all instances into the class var array
  end

  def artist_name #instance method
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def self.all #class method
    @@all
  end
end
