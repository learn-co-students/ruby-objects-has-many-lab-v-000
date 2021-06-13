
class Author
  attr_accessor :name, :title

  @@posts_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    self.posts << post
    post.author = self
    @@posts_count +=1
  end
  def add_post_by_name(name)
    post = Post.new(name)
    self.posts << post
    post.author = self
    @@posts_count +=1
  end

 def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    @@posts_count +=1
    post.author = self
  end 

  def posts
    @posts
  end

  def self.post_count
    @@posts_count
  end
end