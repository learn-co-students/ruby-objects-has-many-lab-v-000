class Song

  attr_accessor :artist
  attr_reader :name

  def initialize(name)
    @artist = artist
    @name = name
  end

  def artist_name
     self.artist.name
     
   end
end
