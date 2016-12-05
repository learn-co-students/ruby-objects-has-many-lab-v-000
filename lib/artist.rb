class Artist
  attr_accessor :name,  :songs, :artist_name
      @@song_count = 0
      def initialize(song_name)
        @name = song_name
        @songs = []
      end

      def songs
        @songs
      end

      def add_song(song)
        @songs << song
        @@song_count += 1
        song.artist = self
      end

      def add_song_by_name(song)
        new_song = Song.new(song)
        @songs << new_song
        @@song_count += 1
        new_song.artist = self
      end

      def self.song_count
        return @@song_count
      end

      def artist_name
        self.artist_name
      end

end
