
class Author
  attr_accessor :name, :posts
  @@post_count = 0
  
  def initialize(author)
    @name = author
    @posts = []
  end
  
  def self.post_count=(count)
    @@post_count += count
  end
  
  def self.post_count
    @@post_count
  end
  
  def add_post(new_post)
    self.posts << new_post
    new_post.author = self
    Author.post_count = 1
  end
  
  def add_post_by_title(title)
    post_new = Post.new(title)
    self.add_post(post_new)
  end
end