class Author
  attr_accessor :name, :posts

@@total_posts = 0

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @@total_posts += 1
    @posts << post
  end
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
  end
  
  def self.post_count
    @@total_posts
  end
  
end