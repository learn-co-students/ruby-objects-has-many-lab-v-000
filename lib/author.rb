class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    $posts
  end

  def add_post(post)
    $posts << post unless $posts.include? post
    post.author = self
  end

  def add_post_by_title(post)
    post = Post.new(post)
    $posts << post unless $posts.include? post
    post.author = self
  end

  def self.post_count
    $posts.count
    #binding.pry
  end

end
