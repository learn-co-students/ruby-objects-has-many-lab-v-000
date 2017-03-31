class Author
  attr_accessor :name, :posts
  @@post_count = 0
  @@authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self 
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post 
    post.author = self 
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@authors.map{|author| author.posts.count}.reduce(:+)
  end
    
end