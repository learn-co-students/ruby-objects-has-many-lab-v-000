class Author

  attr_accessor :name, :author
  attr_reader :posts
  @@post_count = 0
  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    @posts << new_post
    @@posts << new_post
    new_post.author = self
    new_post
  end

  def self.post_count
    @@posts.count do |post|
      @@post_count = @@post_count + 1
    end
  end

end
