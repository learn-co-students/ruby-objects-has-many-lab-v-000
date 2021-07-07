class Artist

attr_accessor :name, :songs

def self.song_count
Song.all.select{|song| !!song.artist}.length
end


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    self.add_song(song)

  end

end
