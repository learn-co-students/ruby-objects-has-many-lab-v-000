class Post
  attr_accessor :post
  def initialize(post)
    @post = post
  end

  def self.post
    @post
  end

end
