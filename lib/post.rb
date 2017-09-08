class Post

  attr_accessor :title, :author

  @@post_count = 0

  def initialize(title)
    @title = title
  end

  def title
    @title
  end

  def author_name
    self.author.name if self.author #knows the name of its author, returns nil if post has no author
  end

end
