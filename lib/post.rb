class Post

  attr_accessor :title, :author

  def initialize(title)
    self.title = title
  end

  def author_name
    self.author != nil ? self.author.name : nil
  end

end
