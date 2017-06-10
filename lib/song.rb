class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist.respond_to?(:name)
      self.artist.name
    else nil
    end
  end

end
