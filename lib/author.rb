#class Author

class Author
  #attr_accessors
  attr_accessor :name, :posts, :post
  #class variable posts count set to 0
  @@post_count = 0

  #initialize new name with posts to empty array
  def initialize(name)
    @name = name
    @posts = []
  end

  #returns the posts array
  def posts
    @posts
  end

  #creates new post, adds to posts array, tells post belongs to author
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  #creates post title and tells that post title belongs to author
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  #returns total posts associated to authors
  def self.post_count
    @@post_count
  end

end
