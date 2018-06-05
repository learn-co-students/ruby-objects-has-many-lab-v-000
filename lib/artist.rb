class Artist
  @@all = 0
   attr_accessor :name
   attr_reader  :songs
   def initialize(name)
    @name = name
    @songs = []

   end

   def add_song(song) #I create the artist and then put the songs.
          @songs << song
          song.artist = self
          @@all += 1
  end
    def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
                  @@all += 1
    end
    def self.song_count

       @@all
    end
end
