require 'pry'

class Author
  attr_accessor :name, :author, :posts, :title
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = [ ]
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(name)
    post = Post.new(name)
    post.author = self
    @posts << post
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end

class Post
  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author=(author)
    author.posts << self
    @author = author
  end

  def author_name
    if self.author
      author.name
    else
    end
  end

end
