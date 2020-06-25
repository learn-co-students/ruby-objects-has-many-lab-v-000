# first attempt 6/25/17
# class Song
#   attr_accessor :name, :artist
#
#   def initialize(name)
#     @name = name
#   end
#
#   def artist_name
#     self.artist == nil ? nil : self.artist.name
#   end
#
# end

# second attempt 7/4/17

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
  
end
