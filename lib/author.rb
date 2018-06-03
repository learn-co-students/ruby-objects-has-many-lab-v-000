class Author
  attr_accessor :name
  attr_reader :posts

  @@post_count = 0
  @@authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

def add_post(post)
  @posts << post
  post.author = self
end

def add_post_by_title(post_title)
  post = Post.new(post_title)
  @posts << post
  post.author = self
end

def self.post_count
    @@post_count = @@authors.map {|author| author.posts.count}.reduce(:+)
end

end
