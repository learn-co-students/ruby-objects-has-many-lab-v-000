## This is the code for the Post class.
## This will be related to the Author class.
## The tests for the post.rb will not pass
## properly if the Author class isn't working
@@all = []
class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    self.author.name
  end

end
