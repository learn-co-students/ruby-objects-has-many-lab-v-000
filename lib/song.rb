# Song class
#
# The Song class belongs to only one Artist...but the Artist can have many songs.
#
#

class Song

  attr_accessor :name, :artist

  def initialize(title = nil)
    self.name = title
    artist = nil
  end

  def artist_name
    @artist != nil ? self.artist.name : @artist
  end









end

