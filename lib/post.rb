class Post
  @@all = [ ]
  attr_accessor :title, :author, :author_name, :posts

  def initialize(title)
    @title = title
    self.class.posts << self
  end
  def self.posts
    @@all
  end
  def author_name
    self.author.name unless self.author == nil
  end
end
