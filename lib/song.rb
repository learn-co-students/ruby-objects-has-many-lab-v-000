# require 'pry'

class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name=name
    # binding.pry
#    # binding.pry
  end




  def artist_name
    # binding.pry
    if self.artist != nil
      self.artist.name
    end
    # binding.pry
  end




end
