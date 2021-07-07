require 'pry'
class Artist
     @@all = [] #collects all Artist instances
     attr_accessor :name, :songs

    # def songs
    #   @songs
    # end

    # def songs=(songs)
    #   @songs= songs
    # end

    def initialize(name)
      @name = name
      @songs = [] #collects all Song instances associated to an Artist instance
      @@all << self
    end


    def add_song(song)
      song.artist = self
      self.songs << song
    end
    #
    #
    def add_song_by_name(new_name)
       song = Song.new(new_name)
       add_song(song)
         song
    end


    def self.all
      @@all
    end


    def self.song_count
      counter = 0
      self.all.each do |a|
      counter += a.songs.size
    end
      counter
    end
  end
