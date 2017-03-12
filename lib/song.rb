class Song

  attr_accessor :artist, :name


  def initialize(title)
    @name = title
  end

  def artist_name
    # &. aka safe navigation returns nil if name actually nil
    self.artist&.name
  end

end
