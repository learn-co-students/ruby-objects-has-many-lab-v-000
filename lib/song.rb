require 'pry'
class Song

attr_accessor :name, :genre

def initialize(name, genre=nil,artist=nil)
  @name=name
  @genre=genre
end
def artist=(artist=nil)
  @artist=artist
end

def artist
  @artist
end

def artist_name
  if artist==nil
    return nil
  else
 self.artist.name
end

end



end