class Song

  attr_accessor :artist, :name, :genre

  def initialize(name)
    @name=name
    @genre=genre
  end


  def artist_name
    self.artist == nil ? nil : self.artist.name
  end


end
