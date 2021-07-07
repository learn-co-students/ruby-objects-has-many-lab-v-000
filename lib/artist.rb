class Artist 
  attr_accessor :name 
  

  
    def initialize(name)
      @name = name
      @songs = []
    end
  
    def artist 
      @name
    end 
    
    def name
      @name
    end 
    
    def songs
      @songs
    end
    
    def self.song_count
      Song.all.count
    end
    
    def add_song(title)
       @songs << title
       title.artist = self
     
    end
    
    def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
      
    end


end