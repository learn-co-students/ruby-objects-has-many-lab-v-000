class Song
  attr_accessor :title, :artist
  @@all=[]

  def initialize(title)
    @@all<<self
    @title=title
  end

  def name
    @name=self.title
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist=artist.name
  end

  def artist_name
    if self.artist
      self.artist=artist.name
    else
      nil
    end
  end
end
