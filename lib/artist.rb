class Artist

  attr_accessor :name, :songs

  @@all = 0;

  def initialize(name)
    @name = name;
    @songs = [];
  end

  def add_song(song)
    @songs << song;
    @@all += 1;
    song.artist = self;
  end

  def add_song_by_name(name)
    song = Song.new(name);
    @songs << song;
    @@all += 1;
    song.artist = self;
  end

  def self.song_count
    @@all;
  end

end
