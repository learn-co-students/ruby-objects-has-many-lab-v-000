class Song
  attr_accessor :artist, :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name

    # if self.artist == nil
    #   nil
    # else
    #   self.artist.name
    # end
  end
end
