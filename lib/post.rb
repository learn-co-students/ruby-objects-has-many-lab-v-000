require 'pry'
class Post
  attr_accessor  :author, :title
  def initialize(post)
    @title = post
    #binding.pry
  end
  def author_name
    self.author && self.author.name
    if self.author
      self.author.name
    end
  end

end
