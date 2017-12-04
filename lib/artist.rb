class Artist
    attr_accessor :name, :artist
    
    def initialize(name)
        @name = name
        @songs = []
        @@song_count = 0
    end 
    

    def add_song(song)
        @songs << song
        song.artist = self
    end
    
    
    def songs
        @songs
    end 
    
    
    def add_song_by_name(name)
        song = Song.new(name, artist)
        @songs << song
        song.artist = self
    end
    
   
    def self.song_count
        @@song_count += 2 
    end
end