class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    if @artist
      return @artist.name
      else
      return nil
    end
  end

end