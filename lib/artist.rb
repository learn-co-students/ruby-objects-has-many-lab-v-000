require 'pry'
class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
   @songs << song
   song.artist = self
  end

  def songs
  @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    self.songs.last.name
  end

   #adele.add_song_by_name("Rolling in the Deep")
   #expect(adele.songs.last.name).to eq("Rolling in the Deep")
   #expect(adele.songs.last.artist).to eq(adele)
   

end   
