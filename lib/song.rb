class Song

  attr_accessor :artist
  attr_reader :name

  @@count = 0

  def initialize(name)
    @name = name
    @@count += 1
  end

  def self.count
    @@count
  end

  def artist_name
    artist.nil? ? nil : artist.name
  end

end
