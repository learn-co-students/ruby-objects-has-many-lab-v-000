class Song
attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def artist_name
  self.artist ? self.artist.name : nil
  end
end
