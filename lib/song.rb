class Song
  attr_accessor :name,:songs,:genres,:genre, :artist

  def initialize(name)
    @name = name
    @artists 
    @genres = []


    
    end

    def artist_name
  if @artist == nil
     return nil
  else
    @artist.name
  end
end

end