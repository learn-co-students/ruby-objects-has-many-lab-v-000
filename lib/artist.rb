class Artist
    attr_accessor :name, :songs, :song, :add_song 
      @@song_count = 0
    def initialize(name)
        
        self.songs = []
        @name = name
       

    end
   
    def songs
        @songs
    end
    def add_song(name)
        songs << name 
        song.artist = self
        # @@song_count += 1
    end

    def self.song_count
       puts @@song_count
    end

end