class Song 
   
   attr_accessor :artist, :name 
   
   def initialize(name, artist = nil)
     @name = name
     @artist = artist
   end
   
   def artist_name
     if self.artist == nil
       nil
     else
       self.artist.name
     end
   end
   
end 