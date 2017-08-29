class Post

attr_accessor :title

@@post_count = 0

  def initialize(title)
    @title = title
    @posts = []
  end

  def title
    @title
  end

  def author
    author.post = self unless author.post.include?(self)
  end

  def author_name
    author.post = self unless author.post.include?(self)
  end

end
