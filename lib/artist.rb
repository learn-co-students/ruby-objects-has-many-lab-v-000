class Artist

  attr_accessor :name, :songs
  @@song_count = 0

  def self.song_count
    @@song_count
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(name)
    filename = name.downcase.tr(" ", "_")
    filename = Song.new(name)
    filename.artist = self
    @songs << filename
    @@song_count +=1
  end

 end
