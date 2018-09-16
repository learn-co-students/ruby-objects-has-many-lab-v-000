class Artist 
  
attr_accessor :name, :songs, :artist, :song_count

@@songs = []

def initialize(name)
  @name = name
  @songs = []
end 

def add_song(song)
  @songs << song
  @@songs << song
  song.artist = self
end 
 
def add_song_by_name(song)
  new_song = Song.new(song)
  new_song.artist = self
  new_song.name = song
  @songs << new_song
  @@songs << song
end 

def self.song_count 
  @@songs.count
end
  
  
  
  
  
  
  
  
  
  
end


