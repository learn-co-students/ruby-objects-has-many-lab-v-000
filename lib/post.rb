class Post

  attr_accessor :author, :title

  def initialize(title)
    self.title = title
  end

  def author_name
    (self.author) ? (self.author.name): nil   
  end

end