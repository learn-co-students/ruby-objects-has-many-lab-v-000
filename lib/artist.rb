class Artist
     attr_accessor :name, :songs
     @@song_count = 0
     
     def initialize(name = nill)
          @name = name
          @songs = []
     end
          
     def add_song(song)
          @@song_count +=1
          @songs << song
          song.artist = self
     
     end
     
     def songs
          @songs
          
     end 
     def self.song_count
          @@song_count
     end
     
end