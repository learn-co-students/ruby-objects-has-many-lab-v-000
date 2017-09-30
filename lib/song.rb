require_relative 'artist.rb'

class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def artist
    @artist
  end

  def artist_name
    if self.artist.is_a?(Artist) == true
      self.artist.name
    else
      nil
    end
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end

  def self.song_count
    @@song_count
  end
end
