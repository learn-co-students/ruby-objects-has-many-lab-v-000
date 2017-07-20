class Artist
  attr_accessor :name, :songs

  @@all = []
  @@song_count = 0
  def initialize(name)
    self.name = name
    self.songs = []
    self.save
  end

  def add_song(song)
    self.songs.push(song)
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    self.songs.push(song = Song.new(name))
    song.artist = self
    @@song_count += 1
  end

  def self.all
    @@all
  end

  def save
    self.class.all.push(self)
  end

  def self.song_count
    @@song_count
  end
end
