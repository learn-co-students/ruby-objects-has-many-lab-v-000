class Song
attr_accessor :name, :artist  #artist pulls in the artist instance from the Artist class
@@all=[]

    def initialize(name)
      @name=name
      @@all << self
    end

      def self.all
        @@all
      end

      def artist_name
        if @artist == nil
          nil
        else @artist.name  #@artist pulls in the Artist instance. From there, we call the name method from the Artist class
        end
      end


end
