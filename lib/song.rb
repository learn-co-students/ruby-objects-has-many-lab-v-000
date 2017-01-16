class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end

  def name
    @title
  end

  def artist_name
    if !self.artist
      nil
    else
      self.artist.name
    end
  end

end
