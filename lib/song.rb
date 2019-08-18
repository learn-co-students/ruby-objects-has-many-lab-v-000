class Song
  attr_accessor :artist
  attr_reader :name

  def initialize(song_name)
  	@name = song_name
  end

  def artist_name
  	if self.artist == nil
  		return nil
  	else self.artist.name
  	end
  end
end