
class Song
 attr_accessor :name, :artist

@@all = [] #empty array to equal variable

 def initialize(name) #when object instantiated, whatever argument passed assigned variable 'name'
   @name = name #sets argument to equal instance variable we can work with
   @artist = artist #same as above
   @@all << self
 end

def artist_name #object knows the name of it's artist
 if self.artist #self points to current object, this gives the artist of the object
   self.artist.name #returns name of the artist of the object
 else
   nil #returns nil if the song does not have an artist
   end
end

def self.all #explicit receiver of .all is class Song
 @@all #returns array that all objects have been shoveled into above
end

end
