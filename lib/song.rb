
class Song
  attr_accessor :name, :artist_name
  attr_reader :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist=(name)
    @artist = name
    @artist_name = @artist.name
  end
end