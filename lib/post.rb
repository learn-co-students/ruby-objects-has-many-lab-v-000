class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    @author ? @author.name : nil
  end

  def self.posts
    @@all
  end
end
