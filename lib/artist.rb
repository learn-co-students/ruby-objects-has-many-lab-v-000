class Artist
  attr_accessor :name

@@song_count = 0

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  #adds song to the artist's collection
  self.songs << song
  #tells song that it belongs to that artist
  song.artist = self
  @@song_count +=1
end

def add_song_by_name(name)
  song = Song.new(name) #creates new song with name(argument)
  self.songs << song
  song.artist = self
  @@song_count +=1
end

def songs
  @songs
end

def self.song_count
  @@song_count
end

end
