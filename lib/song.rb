class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def artist_name
    if @artist
      @artist.name
    else
      nil
    end
  end
  
end
