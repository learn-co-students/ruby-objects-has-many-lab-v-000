class Artist 
    attr_accessor :name,:artist
      @@artist 
      @@count = 0 
    def initialize(name)
      @name = name 
      @songs = []
      @artist = artist 
      
    end 
  
   def songs  
     @songs 
   end 
   
   def add_song(song)
     @songs << song       #has many 
     song.artist = self #belong to
     @@count += 1 
   end 
   
  def add_song_by_name(name)
   song = Song.new (name)
   @songs << song 
   song.artist = self 
    @@count += 1 
end 

 def self.song_count
   @@count
 end 

end 

