class Author
  attr_accessor :name, :title #setter/getter Author's name.
  attr_reader :posts #just need to read the posts (they have already been titled/set/written?)

  @@post_count = 0 #need to be able to count up all instances so have to create class var and then start counter at 0 (we assume its starting at 0 instances)

  def initialize(name) #instances initialized via argument of Author's name
    @name = name #set the Authors name local var to an instance var
    @posts = [] #set instance var posts to empty array to catch all instances
    end

  def add_post(post) #method for adding a post to the author lists of posts
    @@post_count += 1 #each time an instance is created and passed through the methods, the count goes up by 1.
    @posts << post #push the post into our instance array @posts
    post.author = self #the title 'argument/parameter' is going to be modified by the author 'method' and set to self.
  end

  def add_post_by_title(title)
    @@post_count += 1
    post = Post.new(title)
    self.posts << post
    post.author = self
  end

  def self.post_count #class method! need to call it on itself
    @@post_count
  end
end
