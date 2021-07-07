class Song
attr_accessor :artist, :song, :name, :artist_name
def initialize(name)
  @name = name

end

def artist_name
  artist.name if artist
end

end
