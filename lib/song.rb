class Song

  attr_accessor :artist #song belongs to artist object
  attr_reader :name

  def initialize(name)
    @artist = artist
    @name = name
  end

  def artist_name
     if artist == nil #if song doesn't have an artist return nil
       nil
     else
      #knows the name of it's artist
      self.artist.name #else return the name of the instance of the artist
     end
  end
end
