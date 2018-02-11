class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts =[]
  end

  def add_post(post)
    new_post = Post.new(post)
    @post << new_post
  end
end
