require 'pry'

#create Artist class 
# create Song class 
class Song 
    
    
    
end 

class Artist 
    attr_accessor :name, :songs # create attr_accessor for name, songs
    def initialize(name) # initialized instance with name 
        @name = name 
        @songs = [] # create songs instance variable
        # set to empty array
    end 
    
    # create add_song instance method 
    # has one argument (song) 
    
    def add_song(song)
        @songs << song
    end
    
end 