class Author 
  
  @@all = []
  
  attr_accessor :name 
  attr_reader :posts
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def self.post_count
   @@all.reduce(0) { |count, author| count + author.posts.size }
 end
  
  
  def add_post(post)
    @posts << post
    post.author = self
  end
    
  def add_post_by_title(title)
    self.add_post(Post.new(title))
  end
  
end