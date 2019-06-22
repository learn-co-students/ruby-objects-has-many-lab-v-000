require'pry'



class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name) #only applies to the instance, default values for new instance
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self #this means that this function is operating on this particular instance of the Artist class eg an individual artist
    @songs << song
    @@song_count+=1
  end


  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end


  def self.song_count #self.<method name> means this function operates at the class level - it it impacting or considering the universe of objects
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
