require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs
  @@artist = []

  def initialize(name)
    @name = name
    @songs = []
    @@artist << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
    end

  def add_song_by_name(name_string)
     song = Song.new(name_string)
     song.artist = self
     @songs << song
   end

   def self.song_count
     @@artist.collect {|artist_object| artist_object.songs}.flatten.count
   end

end
