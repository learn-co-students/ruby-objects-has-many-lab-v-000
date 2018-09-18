class Author
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title
    title.author = self
  end
  
  def self.post_count
    Post.all.length
  end
  
end