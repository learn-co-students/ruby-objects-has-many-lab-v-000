


class Artist
  attr_reader :name, songs

  @@all = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(title)
    title.artist = self
    self.songs<< title
    @@song_count +=1

  end

  def add_song_by_name(title)
    new_song = Song.new(title)
    add_song(new_song)
  end

  def self.song_count 
    @@song_count
  end

end
