class Song
  attr_accessor :name, :artist # #artist means its asking for an attribute

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist.name if self.artist
    #returns the name if self.artist isn't nil
  end


end
