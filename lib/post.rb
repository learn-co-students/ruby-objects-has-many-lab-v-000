class Post

  attr_accessor :title, :author

  def initialize(title)
    @author = nil
  end

  def author_name
    self.author.name
  end
end