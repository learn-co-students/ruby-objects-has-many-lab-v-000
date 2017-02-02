
class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name
    begin
       self.artist.name
    rescue StandardError
      nil
    end  
  end
end
