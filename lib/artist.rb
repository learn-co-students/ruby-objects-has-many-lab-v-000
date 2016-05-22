class Artist
  
  attr_accessor :name
  
  @@song_count = 0

  def self.song_count
    @@song_count
  end

  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song_name)
    @songs << song_name    
    song_name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    add_song(song_name)
  end

end