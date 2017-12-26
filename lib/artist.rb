class Artist

    @@song_count = 0
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
        @@song_count += 1
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        self.add_song(song)
    end

    def self.song_count
        @@song_count
    end

end