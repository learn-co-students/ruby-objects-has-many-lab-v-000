require 'pry'
class Song 
attr_accessor :name, :artist, :genre 


def initialize(name,genre= nil)

  @name = name
  @genre = genre
end

def artist_name
  self.artist.name if @artist  
  end 
end 