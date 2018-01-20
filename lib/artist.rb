require 'pry'
class Artist

  attr_accessor :name, :song
  @@song_count = 0  #accesable to the whole class.

  def initialize(name)
     @name = name
     @songs = [ ]
  end

   def songs
     @songs
   end

   def add_song(song)
     @songs << song
     song.artist = self
     @@song_count = @@song_count + 1
    #  or # @@song_count +1

   end

   def add_song_by_name(name)
     song = Song.new(name)
     self.songs << song
     song.artist = self  #this is an instance method.
     @@song_count = @@song_count + 1

   end

   def self.song_count
    @@song_count

   end

end
