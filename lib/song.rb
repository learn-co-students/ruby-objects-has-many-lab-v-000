require'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name #its passing. I just feel that every time I revert to an if
    #statement, I'm doing it the wrong way.
    #binding.
    if self.artist == nil
      return nil
    else
      self.artist.name
    end
  end


end