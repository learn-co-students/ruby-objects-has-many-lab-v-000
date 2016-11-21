class Artist

  attr_accessor :name

<<<<<<< HEAD
  @@song_count = 0

  def initialize(name)
=======
@@song_count = 0

  def initialize (name)
>>>>>>> 135035c388aad048a91c77ee3c3237b9010206a2
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

<<<<<<< HEAD
  def add_song_by_name(song_name)
    song = Song.new(song_name)
=======
  def add_song_by_name(name)
    song = Song.new(name)
>>>>>>> 135035c388aad048a91c77ee3c3237b9010206a2
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
<<<<<<< HEAD
=======

>>>>>>> 135035c388aad048a91c77ee3c3237b9010206a2
end
