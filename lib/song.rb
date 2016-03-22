class Song

  attr_accessor :title, :artist, :name, :artist_name

  def initialize(title)
    @name = title
  end

  def artist_name
    if self.artist == nil
      nil 
    else
      self.artist.name
    end 
  end


end