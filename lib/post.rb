class Post
  attr_accessor :title, :author

  def initialize(title)
    @title= title
    @posts= []
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
end