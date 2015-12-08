require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  
  @@song_count = 0

  def initialize(artist)
    @name = artist
    @songs = []
  end

  def add_song(song)
    @songs << song
    # binding.pry
    song.artist = self
    @@song_count += 1

  end

  def add_song_by_name(title)
    song = Song.new(title)
    @songs << song
    song.artist = self
    @@song_count += 1
  end



  def self.song_count
    # binding.pry
    @@song_count
  end


end
