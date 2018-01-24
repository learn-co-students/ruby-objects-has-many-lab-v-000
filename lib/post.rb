class Post

  attr_accessor :title, :post, :author

  def initialize(title)
    @title = title
  end

  def author_name
    if author == nil
      return nil
      else
      self.author.name
    end
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @post << post
    post.author = self
  end


end