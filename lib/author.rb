class Author
  @@all = []
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def add_post(post_title)
    post_title.author = self
    @posts << post_title
  end
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    self.add_post(new_post)
  end
  
  def self.post_count
    total_posts = 0
    @@all.each do |author|
      total_posts += author.posts.count
    end
    return total_posts
  end
  
end