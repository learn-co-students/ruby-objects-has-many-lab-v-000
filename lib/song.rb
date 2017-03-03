require 'pry'
class Song
	attr_accessor :artist, :name

	def initialize(name)
		@name = name
	end

	def artist_name
		#binding.pry
		artist ? artist.name : nil
	end

end