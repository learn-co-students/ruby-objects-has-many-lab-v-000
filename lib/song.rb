class Song

  attr_accessor :title, :artist, :name

  def initialize(name)
    @name = name
  end

   def artist_name
     self.artist ? self.artist.name : nil
   end
end
