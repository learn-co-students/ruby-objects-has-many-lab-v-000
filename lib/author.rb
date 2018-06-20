class Author
  attr_accessor :name, :posts
  @@all = []
  def initialize(name)
    @name = name
    @posts = []
  end
  def add_post(title)
    @posts << title
    @@all << title
    title.author = self
  end
  def add_post_by_title(title)
    title = Post.new(title)
    self.add_post(title)
  end
  def self.post_count
    @@all.count 
  end
end