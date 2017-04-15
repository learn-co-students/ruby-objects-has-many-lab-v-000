class Song # rspec --fail-fast

attr_accessor :artist

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def artist_name
    self.artist ? self.artist.name : nil 
  end



end
