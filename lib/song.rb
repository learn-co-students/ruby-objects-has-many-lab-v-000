class Song

  attr_accessor :title, :artist

  def initialize(title)
    @title = title
    @artist = artist
  end

  def name
    @title
  end

  def artist_name
    if artist == nil
      return nil
    end
    
    artist.name
  end


end