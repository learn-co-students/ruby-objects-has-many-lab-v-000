require 'pry'

class Song
  attr_accessor :artist, :name
  

  def initialize(title)
    @name = title
  end

  
  

  def artist_name
    artist ? self.artist.name : nil
  end




end
