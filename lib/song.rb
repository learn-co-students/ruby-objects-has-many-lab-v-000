
class Song
@@songs = 0
attr_accessor :name, :artist, :genre
  def initialize(name)
    @name = name
    @@songs += 1


  end


  def artist_name
    #@artist #why doesn't this work?  (artist in artist class not song)
    #if self.artist.name != nil #not does it have an artist name, but is it an existing artist (to be added later?)
    output = "" #prob get rid of this, for test purposes
    if self.artist
      output << self.artist.name

    else
      output = nil
    end
  output
  end








end
