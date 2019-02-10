class Song
  attr_accessor :artist, :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << name
  end

  def self.all
    @@all
  end


end #<---- class end
