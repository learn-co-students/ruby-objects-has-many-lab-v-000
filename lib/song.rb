class Song
  attr_accessor :title, :artist

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def name
    @title
  end

  def self.all
    @@all
  end

  def artist_name      #may need a cond. to return nil if no artist, not sure what it returns without right now
    if defined?(self.artist.name)
      self.artist.name
    else
      nil
    end
  end

end
