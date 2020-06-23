class Artist
  attr_accessor :name, :songs
  @@song_count=0
  def initialize(n) @name=n; @songs=[] end
  def self.song_count() @@song_count end
  def add_song(s) @songs<<s; s.artist=self; @@song_count+=1 end
  def add_song_by_name(n) s=Song.new(n); s.artist=self; @songs<<s; @@song_count+=1 end
end
