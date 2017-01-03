class Post
  attr_accessor :author
  def initialize(name)
    @name = name
    @posts = []
  end

  def author_name
   self.author.name
 end
end 