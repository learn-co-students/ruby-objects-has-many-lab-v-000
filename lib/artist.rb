require 'pry'
class Artist

  attr_accessor :name

    def initialize(name)
      @name = name

    end

    def add_song(song)
      $songs << song unless $songs.include? song
      song.artist = self
    end

    def songs
      $songs
    end

    def add_song_by_name(name)
      song = Song.new(name)
      $songs << song unless $songs.include? song
      song.artist = self
    end

    def self.song_count
      $songs.count
    #  binding.pry
    end


end
