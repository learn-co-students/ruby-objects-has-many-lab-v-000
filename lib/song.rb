class Song
  attr_accessor :name, :artist
  @@all = []

def initialize(name)
  @name = name
  add_songs
end

def self.all
  @@all
end

def add_songs
  @@all << self
end

def artist_name
  if self.artist
    self.artist.name
  else nil
end

end

end
