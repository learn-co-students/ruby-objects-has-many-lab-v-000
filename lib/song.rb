class Song
  attr_accessor :artist, :name
  def initialize(name)
    @name = name
  end

  def artist_name
    #defined?(some_variable) tells you whether or not that variable has been defined
    if defined?(self.artist.name)
      self.artist.name
    else
      nil
    end

    #can refactor to:
    #@artist.nil? ? nil : @artist.name
    #or
    #@artist.name unless @artist == nil
  end

end