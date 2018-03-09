class Pong
  attr_accessor :name, :author
  def initialize(post)
    @name = post
  end

  def new_post
    if @post then self.post.name else nil
  end
end
end
