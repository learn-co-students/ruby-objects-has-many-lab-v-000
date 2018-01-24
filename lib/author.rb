class Author
  attr_accessor :name
  attr_reader :posts
  @@post_count = 0
  @@authors = []

  def initialize(name="")
    @name = name
    @posts = []
    self.class.authors_add(self)

  end
  def add_post(post)
    @posts << post
    post.author = self

  end
  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end
  def self.post_count
    @@post_count = @@authors.collect {|author| author.posts.count}.reduce(0, :+)
  end
  def self.authors_add(author)
    @@authors << author
  end

end