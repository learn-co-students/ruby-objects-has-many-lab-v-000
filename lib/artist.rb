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

  # def add_song_by_name(name)
  #   new_song = Song.new(title)
  #   @songs << new_song
  #   new_song.artist = self
  # end

  # describe "#add_song" do
  #   it "takes in an argument of a song and adds that song to the artist's collection and tells the song that it belongs to that artist" do
  #     hello = Song.new("Hello")
  #     adele.add_song(hello)
  #     expect(adele.songs).to include(hello)
  #     expect(hello.artist).to eq(adele)
  #   end

end
