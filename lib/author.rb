class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
    #here we are initialize an instance of the Author class. like author
    #Blume or Picoult. Again, not an approp place to increment post count.
  end

  def add_post(post)
    @posts << post
    post.author = self
    #here we tell the collectible item (a post) who it belongs to.
    @@post_count += 1
  end

  def add_post_by_title(post)
    post = Post.new(post)
    @posts << post
    post.author = self
    #here we tell the collectible item (a post) who it belongs to.
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

  def posts
    @posts
  end


end

#class variable store information regarding the class as a whole.
#every instance that belongs to a class can be stored in the class variable.
#Like across all methods in Blume AND the Picoult instance of the class, Authors.
#we use class variables to keep track of all instances of a class.

#class methods- a method that is called on the class itself, NOT on instances of the class.


#instance variables span all instance methods in a single instance of a class.
#so an instance variable @blummeey spans all methods in the Blume's instance of
#the Author class.
#an instance variable stores iformation for a specific instance of the class only.
#@name only stores the name for one instance of the class.
  
