class Artist
      attr_accessor :name, :artist
      @@song_count = 0 # why did it work outside of the
      #initialize method?
      #Created without Dot New to set counter
    def initialize (name)
      @name = name
      @songs = []#artist collection of songs
      @artist = artist#Create the class variable assignment
    end
    def songs
      @songs
    end
    def add_song(song)
      #song = Song.new(name)
      @songs << song
      song.artist= self
      @@song_count +=1#Update class variable by 1
    end
    def add_song_by_name(name)
      song = Song.new(name)#instantiates object Song to life and assigned to variable song
      add_song(song)
    end
    def self.song_count
     @@song_count#Reads out content of the class variable
    end
end
