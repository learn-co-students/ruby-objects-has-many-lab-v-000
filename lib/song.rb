require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def artist_name
    self.artist.name if self.artist != nil
  end

end


freebird = Song.new("Free Bird")
freebird.artist_name
