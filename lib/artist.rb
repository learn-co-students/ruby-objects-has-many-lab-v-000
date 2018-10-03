class Artist 
    attr_accessor :name, :artist 
      @@artist 
      @@count = 0 
    def initialize(name)
      @name = name 
      @songs = []
      @artist = artist 
      @@count =+ 1 
    end 
  
   def songs  
     @songs 
   end 
   
   def add_song(song)
     @songs << song 
     song.artist = self 
   end 
   
  def add_song_by_name(name)
   song = Song.new (name)
   @songs << song 
   song.artist = self 
end 

 def self.song_count
   @@count 
 end 

end 

