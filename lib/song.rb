class Song
  attr_accessor :name, :song, :artist_name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist.name if self.artist.instance_variable_defined?("@name")
  end

end
