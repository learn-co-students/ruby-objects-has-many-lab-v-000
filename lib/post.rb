class Post

  attr_accessor :title, :author

  def initialize(title) #argument of title
    @title = title #initialized with title
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
  end
  end

end
