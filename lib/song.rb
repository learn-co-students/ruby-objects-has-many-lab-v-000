class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
  end

  def artist_name
    return nil if @artist == nil
    @artist.name
  end
end
