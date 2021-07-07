class Song 
  attr_accessor :title, :genre, :artist

@@all = []
  
    def initialize(title)
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end

    def name 
      @title
    end
    
    def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
  
    def song_count
      @@all.count 
    end
end