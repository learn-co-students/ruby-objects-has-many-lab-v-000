  require "pry"

  class Artist
    attr_accessor :name, :artist

    @@song_count = 0

      def self.song_count
        @@song_count +=1
      end

      def initialize(name)
        @name = name
        @songs = []
      end

      def songs
        @songs
      end

      def add_song (song)
      self.songs << song
      song.artist = self
      end

      def add_song_by_name (song_name)
        song = Song.new (song_name)
        self.songs << song
        song.artist = self
        self.class.song_count
      end

  end
