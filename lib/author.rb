class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name=name
    @posts=[]
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author=self
    @posts<<post
  end

  def add_post_by_title(title)
    title=Post.new(title)
    title.author=self
    @posts<<title
  end

  def self.post_count
    Post.all.count
  end


end
