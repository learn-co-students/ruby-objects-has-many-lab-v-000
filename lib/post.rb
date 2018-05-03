class Post
  attr_accessor :author, :post, :title

  def initialize(title)
    @title = title
    @post = post
    @author = author
  end

def author_name
  self.author ? self.author.name : nil 
end

end
