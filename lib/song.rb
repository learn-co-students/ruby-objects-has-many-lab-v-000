class Song
	attr_accessor :artist, :name

	def initialize(name)
		self.name = name
	end

	def artist_name
		if self.artist != nil
			self.artist.name
		else
			nil
		end
	end


end