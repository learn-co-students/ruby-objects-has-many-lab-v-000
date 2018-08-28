class Artist 
  attr_accessor :name 
  @@artists=[]
  
  def initialize(name)
    @name=name
    @songs=[]
    @@artists << self
  end 
  def add_song(song)
    song.artist=self
    @songs << song 
  end 
    
  def add_song_by_name(name)
    n=Song.new(name)
    n.artist=self
    @songs << n 
  end 
  
  def self.song_count
    l=0
    @@artists.each{ |a| l+=a.songs.length}
    l
  end
    
  def songs 
    @songs 
  end
  
end