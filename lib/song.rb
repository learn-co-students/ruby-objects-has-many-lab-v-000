class Song
  attr_accessor :artist, :title

  def initialize(title)
    @title = title
  end

  def name
    @title
  end

  def artist_name
    if @artist
      return @artist.name
    else
      nil
    end
  end
  
end
