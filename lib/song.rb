class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    returned_name = nil
    returned_name = self.artist.name if self.artist != nil
    returned_name
  end
end
