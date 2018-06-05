class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name;
    @artist = nil;
    @@all << self;
  end

  def artist_name
    !self.artist ? nil : self.artist.name;
    #self.artist.name;
  end

  def self.all
    @@all;
  end

end
