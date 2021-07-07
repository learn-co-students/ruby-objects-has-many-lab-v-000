
class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def all
    @@all
  end

  def artist_name
    # this is theirs, and more elegant:
    # if self.author
    #   self.author.name
    # else
    #   nil
    # end

    if self.artist == nil
      nil
    else
      self.artist.name
    end
  end
end
