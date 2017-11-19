class Song
  attr_accessor :name, :artist
  def initialize(name="")
    @artist = nil
    @name = name
  end
  def artist_name
    if(@artist == nil)
      return nil
    end
    @artist.name
  end
end
