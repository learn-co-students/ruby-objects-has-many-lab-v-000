## This is the code for the Post class.
## This will be related to the Author class.
## The tests for the post.rb will not pass
## properly if the Author class isn't working

class Post
  attr_accessor :title, :author
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if author
      self.author.name
    else
      nil
    end
  end

  def self.posts
    @@all
  end

end
