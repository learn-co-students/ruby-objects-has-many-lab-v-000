class Song
       attr_accessor :artist, :artist_name

 def initialize(name)
   @name = name
   
   end

  def name
   @name
  end

   def artist
   @artist
   end

   def artist_name
    if @artist
     self.artist.name
   else
     nil
   end
end

end
