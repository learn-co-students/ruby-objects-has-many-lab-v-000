class Artist
  attr_accessor :name
@@all_artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@all_artists << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

 def add_song_by_name(song_name)
   song = Song.new(song_name)
   @songs << song
   song.artist = self
 end


 def self.song_count
   count = []
  @@all_artists.each do |x|
    count << x.songs.count
  end
  count.inject(0){|sum,x| sum + x }

end











end
