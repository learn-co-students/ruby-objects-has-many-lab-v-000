# Post class
#
# The Post class belongs to one author.
#


class Post

  attr_accessor :title, :author 

  def initialize(title = nil)
    @title = title
    author = nil
  end

  def author_name
    @author != nil ? self.author.name : @author
  end





end


