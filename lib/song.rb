class Song
    attr_accessor :artist, :name, :song_count
    
    def initialize(name)
        @name = name
    end

    def artist_name
        self.artist ? self.artist.name : nil
  end
end