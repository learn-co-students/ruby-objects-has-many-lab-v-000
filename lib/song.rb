class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name # If self.artist? has an object, condition will return an object, which is truthy, and nil if false
    self.artist ? self.artist.name : nil
  end
end
