require "pry"

  class Song
    attr_accessor :artist, :name, :artist_name

    def initialize(name)
      @name = name
    end

    def artist_name
      if self.artist != nil
        self.artist.name
      else
        return nil
      end
    end

  end
