class Song
  attr_accessor :artist
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist.name unless self.artist.nil?
  end

end
