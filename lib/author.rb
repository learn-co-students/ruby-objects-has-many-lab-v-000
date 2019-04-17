class Author
  attr_accessor :name
  @@post_count = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(title)
    title.author = self
    @posts << title
    @@post_count << title
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @posts << title
    @@post_count << title
  end
  
  def self.post_count
    counter = 0
    @@post_count.each do |post|
      counter += 1
    end
    counter
  end
end
