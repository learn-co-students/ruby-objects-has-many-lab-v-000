class Artist
  attr_accessor :name, :songs
#  @@artists = []
  @@song_count = 0

  def initialize(name)
    self.name = name
    self.songs = []
#    @@artists << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count += 1
    song
  end

  def self.song_count
#    @@artists.each do |song_instance|
#      @@song_count += song_instance.songs.count
#    end
    @@song_count
  end
end
