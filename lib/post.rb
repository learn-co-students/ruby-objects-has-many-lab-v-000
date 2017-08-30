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
    self.author.name if self.author
  end

end
