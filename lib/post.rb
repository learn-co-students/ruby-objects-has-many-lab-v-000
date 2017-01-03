class Post
  attr_accessor :author, :title
  def initialize(title)
    @title = title
    @posts = []
  end

  def author_name
    if self.author
      return author.name 
    else
      return nil
    end
  end

end 