class Song
  attr_accessor :title, :name, :artist, :song

  def initialize(name)
    @name = name
end

def artist_name
  if @artist != nil
      self.artist.name
    else
      self.artist = nil
    end
end

end
