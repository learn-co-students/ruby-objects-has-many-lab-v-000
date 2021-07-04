class Artist

  @@song_count = 0
  attr_accessor :name
  attr_reader :songs

 def initialize(name)
   @name = name
   @songs = []
 end

  def self.song_count
    @@song_count
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    self.add_song(song)
  end



end
