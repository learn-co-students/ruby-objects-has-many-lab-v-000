class Song
  attr_accessor :artist
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def artist_name
    if defined? @artist.name
      @artist.name
    end
  end
end
