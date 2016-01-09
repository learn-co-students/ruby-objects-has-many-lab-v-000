class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name	
	end

	def artist_name
		if self.artist
		self.artist.name
		end
	end 
end

#fourth_branch = Song.new("Fouth Branch of the Government")
#technique = Artist.new("Immortal Technique")

#fourth_branch.artist= technique
