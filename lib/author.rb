class Author
  attr_accessor :name # writer and reader for initialized object

  @@post_count = 0 # class variable that holds all posts in class

  def initialize(name)
    @name = name #setting instance variable
    @posts = [] #setting instance variable to empty array
  end

  def posts
    @posts # reader (getter) method for @posts instance variable
  end

  def add_post(post) # new post takes argument of a post
    @posts << post # passed argument pushed into the array
    post.author = self # the author tells itself of the newly passed in post
    @@post_count += 1 # class variable (array) increases by one with new post added
  end # is this method only necessary because test calls for it? nearly the same as next method

  def add_post_by_title(post_title) # post added by the name of post
    post = Post.new(post_title) # set variable to new class post with argument of passed in title
    @posts << post # instance array takes in new post
    post.author = self# author tells itseld of the newly passed in post
    @@post_count += 1 # class variable array increases with new post
  end

  def self.post_count
    @@post_count # return updated array of posts, read by the class Author itself
  end
end
