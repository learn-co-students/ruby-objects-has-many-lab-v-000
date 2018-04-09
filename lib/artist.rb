class Artist
  attr_accessor :name, :songs

  def initialize(name, songs)
    @name = name
    @songs = []
  end
end
