class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name

        @song = []

    end
   
    def artist_name       
        if self.artist
          self.artist.name
        end   
    end

end

        
        