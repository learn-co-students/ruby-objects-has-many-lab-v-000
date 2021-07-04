class Author
  attr_accessor :name, :post
  @@all_posts_ever = []
  def initialize(name)
    @name = name
    @posts = []

  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@all_posts_ever << post
    post.author = self #<---- self refers to the instantiated author
  end

  def add_post_by_title(title)
    post = Post.new(title) #<--- stores the new ojbect in a variable
    self.posts << post #<---creates a record of posts by this author
    @@all_posts_ever << self #<----adds it to record of all posts ever created
    post.author = self #<----- declares the relationship with author
  end

  def self.post_count
    @@all_posts_ever.count
  end
end #<---- class end
