class Author
  AUTHORS = []
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
    AUTHORS << self
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
    count = 0
    AUTHORS.each do |author|
      count += author.posts.size
    end
    count
  end
end