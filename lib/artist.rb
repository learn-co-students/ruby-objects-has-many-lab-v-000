require "pry"

class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []

  end

  def self.song_count
    @@song_count
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    self.songs << song
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    # binding.pry
    song_instance = song_name.downcase.tr(" ", "_")
    song_instance = Song.new(song_name)
    # binding.pry
    self.add_song(song_instance)
    # binding.pry
  end



  def self.song_count
    @@song_count
  end

end
