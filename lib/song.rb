class Song
  attr_accessor :name_of_song, :artist
  @all_songs # can this be #songs like in artist.rb, or should they be different?

  def initialize(name_of_song, artist)
    @name_of_song = name_of_song
    @artist = artist
    @all_songs << self
  end


  def artist_name
    if self.artist
      self.artist.name_of_song
    else
      nil
    end
  end

end
