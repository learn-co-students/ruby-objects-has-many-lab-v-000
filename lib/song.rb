require 'pry'
class Song
  attr_accessor :name, :artist, :song


  def initialize(name)
    @name = name
  end



  def artist_name

    if self.artist.song
      self.artist.name #where did I get artist from --instance of artist method -- from a
    end
  end

end
