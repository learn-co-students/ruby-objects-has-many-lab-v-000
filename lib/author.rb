class Author

attr_accessor :name, :author

@@post_count = 0

def initialize(name)
  @name = name
  @posts = []
end

def posts
  @posts
end

def add_post(post)
  @posts << post
  post.author = self
  @@post_count = @@post_count += 1
end

def add_post_by_title(post_title)
 new_post =  Post.new(post_title)
 new_post.author = self
 self.posts << new_post
 @@post_count = @@post_count += 1
end

def self.post_count
  @@post_count
end

def author_name


end

end