require 'pry'

#create Artist class 
class Artist 
    attr_accessor :name # create attr_accessor for name
    def initialize(name) # initialized instance with name 
        @name = name 
        @songs = [] # create songs instance variable
        # set to empty array
    end 
    
    
end 