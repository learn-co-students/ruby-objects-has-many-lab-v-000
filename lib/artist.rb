require 'pry'

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    # line 20 connects the two classes
    # song refers to an instance of the Song class
    # artist refers to this songs artist attribute
    # artist attribute is set to the instance of the Artist class
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    # creates a new class instance of Song
    song = Song.new(name)
    # Links the Artist to the Song class
    song.artist = self
    # links the Song to the Artist class
    @songs << song
  end

  def self.song_count
    Song.all.count
  end
end
