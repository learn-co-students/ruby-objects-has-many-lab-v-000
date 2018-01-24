class Author

  attr_accessor :author, :name, :title, :posts, :post_count

  @@post_count = 0

  def initialize(name = nil)
    @author = author
    @name = name
    @title = title
    @posts = []

  end

  def name
    @name
  end

  def author
    @author
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@post_count += 1
  end


  def self.post_count
    @@post_count
  end

end