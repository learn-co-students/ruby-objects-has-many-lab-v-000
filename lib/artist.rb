class Artist

  @@song_count = 0

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    self.name = name
    @songs = [] 
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
  end
  
  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
    @songs << new_song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
  
end