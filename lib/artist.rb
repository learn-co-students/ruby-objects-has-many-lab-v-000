class Artist
  attr_accessor :name
  @@songs=[]
  def initialize(name)
    @name=name
  end
  def add_song(song)
    Song.new(song)
    @@songs << song
    song.artist=self
  end
    def add_song_by_name(title)
      song=Song.new(title)
      @@songs << song
      song.artist=self
  end
  def songs
    @@songs
  end
  def Artist.song_count
    @@songs.length
  end
def name
  @name
end

  
end