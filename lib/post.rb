require 'pry'

class Post
  attr_accessor :author

  def initialize(post)
    @title = post
  end

  def title
    @title
  end

  def author
    @author
  end

  def author_name
    @author ? @author.author : nil
  end
end
