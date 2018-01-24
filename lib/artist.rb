class Artist
attr_accessor :name, :artist, :title

@@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end 
  def songs
    @songs 
  end
  def add_song(song)
    @song = song
    @songs << song
    song.artist = self
    @@song_count += 1 
  end
  def add_song_by_name(title)
    @title = title
    title = Song.new(title) 
    @songs << title 
    title.artist = self
    @@song_count += 1 
  end

  def self.song_count
    @@song_count
  end 
end 


