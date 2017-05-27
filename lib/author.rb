require 'pry'
#Author
  #new
  #  is initialized with a name
  #  is initialized with an empty collection of posts
  #name
  #  has an attr_accessor for name
    #posts
    #  has many posts
    #add_post
      #takes in an argument of a post and adds that post to the author's
      #collection and tells the post that it belongs to that author (FAILED - 5)
    #add_post_by_title
      #takes in an argument of a post title, creates a new post with it and
      #associates the post and author (FAILED - 6)
    #.post_count
      #is a class method that returns the total number of posts associated to all existing authors (FAILED - 7)
    #  uses the class variable, @@post_count (FAILED - 8)
class Author
  @@post_count = 0
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end

end
