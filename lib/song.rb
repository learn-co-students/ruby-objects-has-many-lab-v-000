require 'pry'
class Song
attr_accessor :song, :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_name
    self.song.name
  end



end
