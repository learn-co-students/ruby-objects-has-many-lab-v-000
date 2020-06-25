# first attempt 6/25/17
# class Post
#   attr_accessor :title, :author
#
#   def initialize(title)
#     @title = title
#   end
#
#   def author_name
#     self.author == nil ? nil : self.author.name
#   end
#
# end

# second attempt 7/4/17
class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    self.author ? self.author.name : nil
  end
end
