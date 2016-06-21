require 'pry'
class Artist

  attr_accessor :name
  attr_reader :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs =[]
# binding.pry
  end

  def add_song(song)
    @songs << song
    song.artist = self
    # binding.pry
    @@song_count+=1 #+=1 here and below to account for all songs associated to all the existing artists

  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count+=1

    # binding.pry
  end

  def self.song_count
    @@song_count
    # binding.pry
  end

end
