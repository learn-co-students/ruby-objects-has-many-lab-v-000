class Author

  @@ALL_POSTS = []
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts=[]
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@ALL_POSTS << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
    @@ALL_POSTS << new_post
  end

  def self.post_count
    @@ALL_POSTS.count
  end

end
