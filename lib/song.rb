class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    @songs = []#artist collection of songs
    @@songs = []
    @artist = artist
  end
end
