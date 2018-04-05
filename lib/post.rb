
class Post
  attr_accessor :title, :author



  def initialize(title)
    @title = title
    @posts = []
  end


  def author_name
  if  self.author == nil
    nil
  else
    self.author.name
  end
  end


end
