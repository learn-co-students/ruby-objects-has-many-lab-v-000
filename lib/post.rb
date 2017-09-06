class Post
  def initialize(title)
    @title = title
  end
  def author_name
    if self.author == nil
      nil
    else
     self.author.name
   end
  end
  attr_accessor :title, :author
end
