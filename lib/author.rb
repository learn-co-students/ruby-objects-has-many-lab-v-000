# Create a "has many" relationship with the Post class
class Author
  attr_accessor :name, :posts
  @@post_count = 0  # Set post instance count tracker to zero

  def initialize(name)
    @name = name
    self.posts = [] # Create an empty array for the author's post instances
  end

  def add_post(post)
    self.posts << post  # Add the post instance to the author's list of posts
    post.author = self  # Assign the author to the post instance
    @@post_count += 1   # Add one post instance to the count tracker
  end

  def add_post_by_title(title)
    post = Post.new(title)  # Create a new post instance with a title
    self.posts << post      # Add the post instance to the author's list of posts
    post.author = self      # Assign the author to the post instance
    @@post_count += 1       # Add one post instance to the count tracker
  end

  def self.post_count
    @@post_count  # Return the total count of post instances
  end

end
