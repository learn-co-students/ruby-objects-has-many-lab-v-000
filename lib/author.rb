class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(postnew)
    @posts << postnew
    postnew.author = self
    @@post_count = @@post_count + 1
  end
  
  def add_post_by_title(posttitle)
    postnew = Post.new(posttitle)
    @posts << postnew
    postnew.author = self
    @@post_count = @@post_count + 1
  end
  
  def self.post_count
    @@post_count
  end
  
  def posts
    @posts
  end
  
end