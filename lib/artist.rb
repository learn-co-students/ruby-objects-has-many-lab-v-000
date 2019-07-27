require 'pry'

class Artist
  @@counter = []
	attr_accessor :name, :songs

  def initialize(name)
		@name  = name
		@songs = []
  end

	def add_song(new_song)
		new_song.artist = self
		@songs << new_song
    @@counter << new_song
	end

	def add_song_by_name(name)
		new_song = Song.new(name)
		@songs << new_song
		new_song.artist = self
    @@counter << new_song
	end

  def self.song_count
  	@@counter.length
  end
end
