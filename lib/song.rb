class Song

	attr_accessor :artist
	attr_reader :name

  def initialize(name)
  	@name = name
  end

  def artist_name
  	if self.artist
  		self.artist.name
  	else
  		nil
  	end
  end

end