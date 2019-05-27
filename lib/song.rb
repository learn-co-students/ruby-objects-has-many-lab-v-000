require 'pry'

class Song
  attr_accessor :name, :artist

 @@all = []

 def initialize(name, artist=nil)
   @name = name #=> song has a name
   @artist = artist #=> belongs to an artist
   @@all << self
 end

def self.all #=> class method that returns array of all song instances that have been created
  @@all #=> class variable set to an array
end


def artist_name
  artist.name if artist #=> knows the name of artist and returns nil if song doesnt have an artist
end
end
