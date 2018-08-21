# Create a "belongs to" relationship with the Artist class
class Song
  attr_accessor :name, :artist
  @@all = []  # Create an empty array to track all song instances

  def initialize(name)
    @name = name
    @@all << self # Add new song instance to tracker array
  end

  def artist_name
    # Check to see if the song has an artist variable
    # If it does, assign the artist variable the value of the artist's name
    # If it doesn't, return nil
    self.artist ? self.artist.name : nil
  end

end
