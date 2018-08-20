class Artist
  require "pry"
  attr_accessor :name, :songs
  
  @@total_songs = []
  
  def initialize(specific_name)
    @name = specific_name
    @songs = []
  end 
  
   def add_song(specific_song)
    @@total_songs << specific_song
    @songs << specific_song
    specific_song.artist = self
  end 
  
  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs << new_song
    @@total_songs << new_song
    new_song.artist = self
  end
  
  def self.song_count
    @@total_songs.size
  end

 
  
end 