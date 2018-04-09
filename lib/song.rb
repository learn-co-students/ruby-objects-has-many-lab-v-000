class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    #no self needed as ruby method fall through + &. safe navigation operator
    artist&.name
  end

end
