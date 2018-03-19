class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end # initialize

  def author_name
    if self.author != nil
      self.author.name
    else
      nil
    end # if
  end # author_name
  
end # class Post
