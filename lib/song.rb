class Song 
  attr_accessor :name, :artist 
  @@all =[]
  
  def initialize(name)
    @name =  name 
    @@all << self 
  end  
  
  
  
  def self.all 
    @@all 
  end  
  
  
  
 
  def artist_name  
   if artist 
      artist.name
    else  
   nil  
    end 
  end 
  
   
end

  
  




# class Song  
#   attr_accessor :name,  :artist  
#   @@all = [] 
  
#   def initialize(name) 
#     @name = name 
#     @@all << self 
#   end 
  
#   def add_song(song) #argument is instance of a song 
#     song.artist = self    #artist setter methos is equal to elf whidh is artist instance
#   end 


#   def self. all   
#     @@all       # to return the array 
#   end 
