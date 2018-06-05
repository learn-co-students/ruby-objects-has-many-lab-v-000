class Song
   @@all = []
   attr_accessor  :name, :artist  #artist is the key
   def initialize(name)
     @name = name
     @@all << self
   end
    def artist_name
      if self.artist == nil
         return nil
      else
         self.artist.name
      end
  end
end
