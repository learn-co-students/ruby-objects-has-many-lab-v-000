class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        @songs << song
        song.artist = self
    end

    def songs
        @songs
    end

    def self.song_count
        all_songs = []
        @@all.each do |artist|
            all_songs += artist.songs
        end
        all_songs.length
    end

end
