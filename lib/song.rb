class Song

<<<<<<< HEAD
  attr_accessor :name, :artist
=======
  attr_accessor :artist, :name
>>>>>>> 135035c388aad048a91c77ee3c3237b9010206a2

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end
