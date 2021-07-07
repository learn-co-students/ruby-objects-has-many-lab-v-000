class Author 

  attr_accessor :name, :author
  @@posts = []
  
  def initialize(name)
    @name = name
  end
  
  def add_post(post_name)
    @@posts << post_name
    post_name.author = self
  end
  
  def add_post_by_title(name)
    new_post = Post.new(name)
    @@posts << new_post
    new_post.author = self
  end
  
  def posts
    @@posts
  end
  
  def self.post_count
    @@posts.length
  end
end