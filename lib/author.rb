class Author

  attr_accessor :name, :posts

  @@post_count = 0
  @@authors = []

  def initialize(name)

    @name = name
    @posts = []
    @@authors << self
  end

  def add_post(post)

    post.author = self
    self.posts << post

  end

  def add_post_by_title(post_title)

    new_post = Post.new(post_title)
    new_post.author = self
    self.posts << new_post

  end

  def self.post_count

    @@authors.each do |author|

      @@post_count += author.posts.count

    end

    @@post_count

  end

end
