class Artist
attr_accessor :name
@@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def add_song(existing_song)
    existing_song.artist = self
  end  
  
  def add_song_by_name(new_song)
    song = Song.new(new_song)
    song.artist = self
  end  
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.song_count
    Song.all.count
  end
  
end