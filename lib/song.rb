#####new                                                                                                                                 
#is initialized with an argument of a name                                                                                          
#####name                                                                                                                                
#has a name                                                                                                                         
#####artist                                                                                                                              
#belongs to an artist                                                                                                               
#####artist_name                                                                                                                         
#knows the name of its artist                                                                                                       
#returns nil if the song does not have an artist

class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def artist_name
		self.artist ? self.artist.name : nil
	end
end