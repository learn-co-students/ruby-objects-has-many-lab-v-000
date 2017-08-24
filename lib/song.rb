require 'pry'

class Song

	attr_accessor :name, :has_parent

	def artist=(artist)
		self.has_parent = true
		@artist = artist
	end

	def artist
		@artist
	end 

	def initialize(name)
		@name = name
		@has_parent = false
	end

	def artist_name
		if self.has_parent == true
			return self.artist.name
		else
			return nil
		end
	end

end 