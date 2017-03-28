class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # Refactored #artist_name
  def artist_name
    self.artist ? self.artist.name : nil
  end

  # Old code

  #   def artist_name
  #     if artist != nil
  #       self.artist.name
  #     else
  #       nil
  #     end
  #   end
  
end




