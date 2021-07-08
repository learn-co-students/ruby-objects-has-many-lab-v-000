class Post
  attr_accessor :title, :author
  @@all=[]
  
  def initialize(title)
  @title = title
  @@all << self
  end
  
  def author_name
    author.name if author
  end
  
  def self.all
    @@all
  end
end