## This is the code for the Author class.
## This will be related to the Post class.
## The tests for the author.rb will not pass
## properly if the Post class isn't working
require 'pry'
class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(title)
    @posts << title
    title.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    ## binding.pry
    @posts.length
  end

end
