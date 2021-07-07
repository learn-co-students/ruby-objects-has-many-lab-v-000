class Post

  attr_accessor :title, :author
  @@all = Array.new

  def initialize(title)
    @title = title
    @@all << self

  end

  def self.all
    @@all
  end

  def author
    @author
  end

  def author_name
    #binding.pry
    if self.author == nil
      nil
    else
     @author.name
    end
  end

end
