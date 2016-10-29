class Song
  attr_accessor :name, :artist
  def initialize(n) @name=n; @artist=nil end
  def artist_name() @artist==nil ? nil : @artist.name end
end
