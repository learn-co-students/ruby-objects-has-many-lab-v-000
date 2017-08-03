class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        
    end
    def songs
        
    end
  
    def artist_name
        self.artist ? self.artist.name : nil
    end
    
    
end