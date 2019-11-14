class Author
  attr_accessor :name
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
    @posts << post
    post.author = self
  end

  def self.post_count
   count = []
    @@authors.each do |x|
      count << x.posts.count
    end
    count.inject(0){|sum,x| sum + x}
  end












end
