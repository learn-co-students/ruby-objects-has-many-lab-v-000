class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.instance_variable_defined?(:@artist)
      self.artist.name
    else
      nil
    end
  end
end
