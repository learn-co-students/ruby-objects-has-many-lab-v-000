class Song
  attr_accessor :title, :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    return nil if self.artist == nil
    else
    return self.artist.name
    end

end
