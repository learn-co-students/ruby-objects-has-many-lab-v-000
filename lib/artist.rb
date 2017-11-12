class Artist
attr_accessor :name
@@song_count = 0

  def initialize(name)
    self.name = name
    @songs = []

  end

def songs
  @songs
end

  def add_song(title)
    self.songs << title
    title.artist = self #doesn't create a
    @@song_count += 1
  end

  def add_song_by_name(title)
    linked_song = Song.new(title)
    self.songs << linked_song
    linked_song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end


end
