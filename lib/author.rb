class Author
  attr_accessor :post, :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end #end of initialize

  def self.post_count
    @@post_count
  end #end of post_count

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count +=1
  end #end of add_post

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count +=1
  end #end of add_post_by_title

  def posts
    @posts
  end #end of posts

end #end of Author class
