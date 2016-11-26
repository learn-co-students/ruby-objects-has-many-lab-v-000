class Post
  attr_accessor :title, :author

  @@post_count = 0

  def initialize(title)
    @title = title
    @@post_count += 1
  end

  def author_name
    self.author.name unless self.author == nil
  end
end
