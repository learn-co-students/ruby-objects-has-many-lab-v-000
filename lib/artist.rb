require 'pry'

class Artist
attr_accessor :name, :songs, :new_by_name

@@song_count = 0

  def initialize (name)
    @name = name
    @songs = []
  end

  def song
    @songs
  end

  def name
    @name
  end


  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count +=1
  end

  def add_song_by_name(new_by_name)
    song = Song.new (new_by_name)
    @songs << song
    song.artist = self
    @@song_count +=1
  end


  def self.song_count
    @@song_count
  end

end
