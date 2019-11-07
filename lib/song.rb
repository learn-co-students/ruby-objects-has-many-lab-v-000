class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    result = nil
    if self.artist != nil
      result = self.artist.name
    end
    result
  end
end
