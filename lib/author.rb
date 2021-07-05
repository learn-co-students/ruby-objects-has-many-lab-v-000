class Author
@@post_count = []

attr_accessor :name, :posts

def initialize(name)
  @name = name
  @posts = []
end

def add_post(post)
@posts << post
@@post_count << post
post.author = self
end

def add_post_by_title(title)
  new_post = Post.new(title)
  @posts << new_post
  @@post_count << new_post
  new_post.author = self
end

def self.post_count
@@post_count.count
end
end
