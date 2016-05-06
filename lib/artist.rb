class Artist

  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs.dup.freeze
  end

  def self.songs
    @songs
  end
 
  def add_song_by_name(name)
     new_song = Song.new(name)
     @songs << new_song
     new_song.artist = self
     @@song_count += 1
   end

   def self.song_count
     @@song_count
   end

  #  describe ".song_count" do
  #    it "is a class method that returns the total number of songs associated to all existing artists" do
  #      expect(Artist.song_count).to eq(2)
  #    end
   #
  #    it "uses the class variable, @@song_count" do
  #      expect(Artist.class_variable_get(:@@song_count)).to be_a(Integer)
  #    end
  #  end

end
