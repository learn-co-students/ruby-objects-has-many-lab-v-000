
class Song
  attr_accessor :name, :artist
  def initialize(title)
    @name = title
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
