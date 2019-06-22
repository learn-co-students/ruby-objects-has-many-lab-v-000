class Author

  @@post_count = 0

  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []
  end

#self is whoever that author is
#why do we need self.posts? when we didn't need in the artist class for the same method of add_song?
  def add_post(post)
    post.author = self
    @posts << post
    @@post_count+=1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@post_count
  end

end
