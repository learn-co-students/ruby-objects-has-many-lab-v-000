class Author

  attr_reader :name, :posts

  @@all = []
  @@post_count = 0

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
  end

  def self.post_count
    @@all.each do |author|
      @@post_count += author.posts.count
    end
    @@post_count
  end

end
