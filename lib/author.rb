class Author
  
  attr_accessor :name, :posts, :post
  
  @@all =[]
  def initialize(name)
    @name = name 
    @posts = []
    @post = post
    @@all << self
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end
  
  def self.post_count
    @@post_count = 0
    @@all.each do |author|
      @@post_count += author.posts.length
    end 
    @@post_count
  end
end