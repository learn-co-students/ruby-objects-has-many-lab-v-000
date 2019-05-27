require 'pry'

class Artist
  attr_accessor :name, :songs

@@song_count = 0

def initialize(name) #allows access and stores artist name
    @name = name
    @songs = []
end

def add_song(song)
  self.songs << song #creates new instances of artist & adds it to the artist array of songs
  song.artist = self
  @@song_count += 1
end

def add_song_by_name(name)
  song = Song.new(name) #takes in an arguement for a song and then associates it with the song and artist
  self.songs << song
  song.artist = self
  @@song_count += 1
end

def songs
  @songs
end

def self.song_count
  @@song_count
end

end
