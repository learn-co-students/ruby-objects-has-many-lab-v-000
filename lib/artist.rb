require 'pry'

#create Artist class 
# create Song class 
#class Song 
#    attr_accessor :artist
#    def initialize(name)
#    end 
#    
#    
#end 

class Artist 
    attr_accessor :name, :songs # create attr_accessor for name, songs
    # create class variable @@song_count 
    @@song_count = 0
    def initialize(name) # initialized instance with name 
        @name = name 
        @songs = [] # create songs instance variable
        # set to empty array
    end 
    
    def self.song_count
          binding.pry
        @@song_count += @songs.length
       binding.pry
    end 
    
    # create add_song instance method 
    # has one argument (song) 
    
    def add_song(song)
        @songs << song
        song.artist = self 
    end
    
    def add_song_by_name(song_name) # takes argument of song name
        # creates a new song
        song = Song.new(song_name)
        # shows the relationship between song and artist
        add_song(song)    
    end 
    
end 