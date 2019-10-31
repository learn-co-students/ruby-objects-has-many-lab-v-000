require 'pry'

# create class Author 
class Author
# create attr_accessor for name, posts
  attr_accessor :name, :posts
# create class variable @@post_count
  @@post_count = 0 
# create initialize method with argument (name)
  def initialize(name)
    @posts = []
    @name = name
  end
# add collection of posts equal to an empty array

# create name method 
  def name 
    @name
  end
  
# create add_post method with argument (post)
  def add_post(post)
   
    @posts << post # add_post method should add the post to the author's collection (@posts array)
    # add_post method should show relationship between post and author 
    # should have the equivalent of title.author
    post.author = self
    @@post_count += 1
  end

# add_post method should show relationship between post and author 

# create add_post_by_title method w/argument (post_title)
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post) 
  end 
# method above should create a new post
# show relationship between post and author 

# create class method (self.post_count)
  def self.post_count
# method should return total #/posts
    @@post_count
  end
end 