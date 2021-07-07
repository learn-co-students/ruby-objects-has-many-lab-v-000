require 'pry'

class Song

  attr_accessor :name
  attr_accessor :artist
  @@all = Array.new

  def initialize(name)
    #binding.pry
    @name = name
    @@all << self
    #binding.pry
  end

  def self.all
    @@all
  end

  def artist_name

   if self.artist == nil
     nil
   else
    @artist.name
   end

  end

end
