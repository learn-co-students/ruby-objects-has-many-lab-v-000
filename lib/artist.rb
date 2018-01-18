require "pry"

class Artist
  @@song_count = 0
  attr_accessor :name, :songs
 def initialize(name)
   @name = name
   @songs = []
 end

 def self.song_count
   @@song_count
 end



 def add_song(song)
   self.songs << song
   @@song_count += 1
   song.artist = self
 end

 def add_song_by_name(song_name)
   song = Song.new(song_name)
   self.add_song(song)
 end




  # use an instance variable @songs to build the "has many relationship"
  # add each song by name
    #create then push
  #

end
