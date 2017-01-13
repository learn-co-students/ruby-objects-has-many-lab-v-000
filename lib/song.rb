class Song
  attr_accessor :name, :artist

  @@all = 0

  def initialize(title)
    @name = title
    @@all += 1
  end

  def self.total
    @@all
  end
end
