class Artist
          attr_accessor :name, :songs
    def initialize(name)
       @name = name
        @songs = []
    end

      @@song_count = 0
  #  add song take argument of a song
  #    add the song to artist collection
  #       and let the song /argument know it belongs to artist

    def add_song(song)
      @song = song
      @songs << song

      @@song_count = @@song_count + 1
      song.artist = self
    end

  # take argument of song name
  def add_song_by_name(song)
    @name = song

    new_instance = Song.new(@name)
      add_song(new_instance)

  end

    def self.song_count
      @@song_count
    end

end