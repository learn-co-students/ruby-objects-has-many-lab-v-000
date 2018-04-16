require 'pry'
class Song
attr_accessor :song, :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_name
    self.song.name
  end

  def artist_name
    if self.artist
      artist.name
    end
  end



end
