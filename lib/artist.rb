class Artist

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    new_song = Song.new(title)
    new_song.artist = @name
    @songs << new_song.song
  end

  # describe "#add_song" do
  #   it "takes in an argument of a song and adds that song to the artist's collection and tells the song that it belongs to that artist" do
  #     hello = Song.new("Hello")
  #     adele.add_song(hello)
  #     expect(adele.songs).to include(hello)
  #     expect(hello.artist).to eq(adele)
  #   end

end
