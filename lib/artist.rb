require 'pry'

class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
    end


    def add_song_by_name(song)
      new_song = Song.new("#{song}")
      self.add_song(new_song)
    end

    @@song_count = 0

    def self.song_count
      @@song_count
    end
end
