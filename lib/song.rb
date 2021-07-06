class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if defined? artist.name
      artist.name
    end
  end
end