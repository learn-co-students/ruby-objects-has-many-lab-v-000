require 'pry'

class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def artist_name
		begin
			return self.artist.name
		rescue
			return nil
		end
	end

end
