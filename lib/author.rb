#create class
class Author
  #The author will have a name
  attr_accessor :name

 #class variable starts with '@@'
 #since this is counting something(post), we start at 0
  @@post_count = 0

  #is initialized with a name
  #is initialized with an empty collection of posts

  def initialize(name)
    @name = name
    @posts = []
  end

#an author has many posts
  def posts
    @posts
  end

#takes in an argument of a post and adds that post to the author's collection and tells the post that
 #it belongs to that author
  def add_post(post)
    @posts << post
    post.author = self
    #add the number 1 to number of post_count
    @@post_count += 1
  end

# takes in an argument of a post title, creates a new post with it and associates the post and author
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    #add the number 1 to number of post_count
    @@post_count += 1
  end

#class method is at the class scope and calls the class variable.
#place self. infrom of the method name to make it a class method

#class method that returns the total number of posts associated to all existing authors
#uses the class variable, @@post_count
  def self.post_count
    @@post_count
  end

end
