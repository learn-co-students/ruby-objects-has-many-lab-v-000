class Post
  attr_accessor :author, :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author.name == " " 
      false
    else self.author.name
    end
  end
  # if my_string.to_s.empty?
  #   # It's nil or empty
  # end
end



# class Song
#   attr_accessor :artist, :name
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
# end
