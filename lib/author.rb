class Author
  attr_accessor :name, :author 

  @@all = []

  def initialize(name, author=nil)
    @name = name
    @author = author
    @@all << self
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
  
   def add_post_by_name(name)
    post = Post.new(name)
    self.post << post
    post.artist = self
    @@post_count +=1
  end
  
  def posts 
    @posts
  end

  def self.all
    @@all
  end
end

