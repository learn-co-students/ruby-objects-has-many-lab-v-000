class Author
  attr_accessor :name, :posts, :author, :title
 
  @@all = []
     
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
 
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    title
  end
 
  def posts
    @posts
  end
  
  def self.post_count
    count = 0 
    @@all.each do |author|
      author.posts.each do |post|
        count += 1
      end 
    end 
    count
  end
  
end