class Post
  attr_accessor :name, :title

  @@all = []

  def initialize(title, author=nil)
    @name = name
    @author = author
    @@post.count << self
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

  def self.all
    @@all
  end
end

