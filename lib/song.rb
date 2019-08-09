class Song
  attr_accessor :name, :artist #belongs to an artist

  def initialize(name) #initialize the song class with a name
  @name = name
  end

  def artist_name
    if self.artist
      self.artist.name
  else
    nil #we dont want code to break if theres no artist, so we ask it to return nil in this case
  end
end
end
