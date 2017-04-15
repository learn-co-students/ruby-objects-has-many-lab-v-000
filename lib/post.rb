class Post

  attr_accessor :author, :title

  def initialize(title)
    self.title = title
    self.author = nil
  end

  def add_post(post) 
    @post << post
    @@posts << post
  end
  
  def author_name
    self.author != nil ? self.author.name : nil
  end

  def post_count
    @@post_count.sum
  end

end