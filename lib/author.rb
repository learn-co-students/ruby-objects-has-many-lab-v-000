class Author

attr_accessor :posts
attr_reader :name

def initialize(name)
  @name = name
  @posts = []
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
  Post.post_counter
end
  

end