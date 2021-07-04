require 'pry'
class Song
  attr_accessor :artist, :name
  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def artist_name
    # binding.pry
    if @artist
      self.artist.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

end
