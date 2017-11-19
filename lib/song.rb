require 'pry'

class Song
    attr_accessor :name, :artist
    
   
    def initialize(name)
       @name = name
    end
    
    def artist_name
        if @artist
            self.artist.name 
        else
            self.artist
        end
    end
    
end    