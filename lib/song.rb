class Song
    
    attr_accessor :name, :artist
    
    def initialize(name, artist = nil)
        @name = name
        @artist = artist
    end
    
    
    def artist_name
        self.artist.name unless self.artist == nil
     end
    
end