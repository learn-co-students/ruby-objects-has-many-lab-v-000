require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name
    self.artist.name if defined?(self.artist.name)
  end

end