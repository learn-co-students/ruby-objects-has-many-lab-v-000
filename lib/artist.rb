require'pry'



class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name) #only applie to the instance, default values for new instance
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count+=1
  end


  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end


  def self.song_count
    @@song_count
  end

  def artist_name
    if self.author == nil
      return nil
    else
    self.author.name
    end
  end



end
