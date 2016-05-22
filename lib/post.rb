class Post

  attr_accessor :title, :author

  def initialize(post_name)
    @title = post_name
  end

  def author_name
    self.author.name if self.author
  end

end