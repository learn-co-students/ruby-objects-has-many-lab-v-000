class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name if artist
    # if artist.nil?
    #   nil
    # else
    #   artist.name
    # end
  end
end















# class Song
#   attr_accessor :artist, :name, :song
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
#   def artist_name
#     if self.artist == nil
#       nil
#     else
#       self.artist.name
#     end
#   end
# end
