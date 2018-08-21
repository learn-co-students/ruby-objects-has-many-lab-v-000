# Create a "has many" relationship with the Song class
class Artist
  attr_accessor :name, :songs
  @@song_count = 0 # Set song instance count tracker to zero

  def initialize(name)
    @name = name
    self.songs = [] # Create an empty array for the artist's song instances
  end

  def add_song(song)
    self.songs << song  # Add the song instance to the artist's list of songs
    song.artist = self  # Assign the artist to the song instance
    @@song_count +=1    # Add one song instance to the count tracker
  end

  def add_song_by_name(name)
    song = Song.new(name) # Create a new song instance with a title
    self.songs << song    # Add the song instance to the artist's list of songs
    song.artist = self    # Assign the artist to the song instance
    @@song_count +=1      # Add one song instance to the count tracker
  end

  def self.song_count
    @@song_count  # Return the total count of song instances
  end

end

### Alternate Solution ###
# class Artist
#   attr_accessor :name
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
#   def add_song(song)
#     song.artist = self
#   end
#
#   def add_song_by_name(name)
#     song = Song.new(name)
#     song.artist = self
#   end
#
#   def songs
#     Song.all.select {|song| song.artist == self}
#   end
#
#   def self.song_count
#     Song.all.count
#   end
# end
