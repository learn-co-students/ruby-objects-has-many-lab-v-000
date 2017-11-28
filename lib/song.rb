# create class Song 
# initialize with argument of (name) 

class Song
    attr_accessor :name, :artist
    
    def initialize(name)
        @name = name
    end 
        
    def artist_name 
      song_artist = self.artist.name
#      if @name == name
#        return @songs
#      end
    end 
    
end 
