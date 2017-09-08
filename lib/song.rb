class Song

attr_accessor :artist, :name

def initialize(name)
  @name = name
end

def artist_name
  result = nil
  result = self.artist.name if @artist
  #make sure won't break if song has no artist (return nil)
  result
end

end
