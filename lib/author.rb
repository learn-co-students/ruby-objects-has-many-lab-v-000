# Author
#   #new
#     is initialized with a name
#     is initialized with an empty collection of posts
#   #name
#     has an attr_accessor for name
#     #posts
#       has many posts
#     #add_post
#       takes in an argument of a post and adds that post to the author's collection and tells the post that it belongs to that author
#     #add_post_by_title
#       takes in an argument of a post title, creates a new post with it and associates the post and author
#     .post_count
#       is a class method that returns the total number of posts associated to all existing authors
#       uses the class variable, @@post_count


class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def self.post_count
    @@post_count
  end

end
