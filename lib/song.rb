class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    self.instance_variable_defined?("@artist") ? artist.name : nil
  end
end
