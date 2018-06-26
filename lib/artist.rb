class Artist
  
  attr_accessor :name
  
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def artist_name
end
  def author_name
  end

  def add_song_by_name(name)
    @name = 
  
    add_song_by_name
  end

def add_post_by_title
end


end

