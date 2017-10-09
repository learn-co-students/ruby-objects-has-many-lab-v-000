class Song

  attr_accessor :artist, :name, :genre

  def initialize(name)
    @name = name

  end

  def artist_name
    self.artist&.name #use safe navigation operator "&" to return nil if class artist doesn't exist
  end


end
