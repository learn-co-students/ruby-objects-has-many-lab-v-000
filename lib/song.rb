class Song
  attr_accessor :name, :artist

  def initialize(title)
    @name = title
  end

  def artist_name
    if @artist != nil
      @artist.name
    else
      nil
    end
  end

end
