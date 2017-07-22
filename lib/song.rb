class Song
     attr_accessor :songs , :artist , :name
     
     def initialize(name)
          @name = name
     end
     
     def artist_name
          self.artist == nil ? nil : self.artist.name
     end
     
end