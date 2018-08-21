# Create a "belongs to" relationship with the Author class
class Post
  attr_accessor :title, :author
  @@all = []  # Create an empty array to track all post instances

  def initialize(title)
    @title = title
    @@all << self # Add new post instance to tracker array
  end

  def author_name
    # Check to see if the post has an author variable
    # If it does, assign the author variable the value of the author's name
    # If it doesn't, return nil
    self.author ? self.author.name : nil
  end

end
