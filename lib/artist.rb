class Artist
  attr_accessor :name
  @@all_songs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    @@all_songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    @@all_songs << song
    song.artist = self
  end

  def songs
    @songs
  end
  
  def self.song_count
    counter = 0
    @@all_songs.each do |song|
      counter += 1
    end
    counter
  end
end