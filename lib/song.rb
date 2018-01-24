class Song
  attr_accessor :name, :artist

  @@song_count = 0

  def initialize(name)
    @name = name
    @@song_count += 1
  end

  def artist_name
    self.artist.name unless self.artist == nil
  end

end
