class Post
  attr_accessor :title, :post, :author
  def initialize(title)
    @title = title
  end

  def self.post
    @post
  end

end
