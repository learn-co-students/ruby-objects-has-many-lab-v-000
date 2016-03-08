class Post
  attr_accessor :title, :author

  def initialize(title="Default Title")
    @title = title
  end

  def author_name
    if p defined?(self.author.name) == "method"
      self.author.name
    else
      nil
    end
  end
end
