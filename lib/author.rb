class Author #author is the constant

  attr_accessor :name, :posts #takes in a name

  @@post_count = 0

  def initialize(name)
    @name = name #initialized with a name
    @posts = [] #initialized with an empty collection of posts
  end

  def posts #posts has many posts
    @posts
  end

  def add_post(post)
    @posts << post #adds posts to authors collection
    post.author = self #tells post that it belongs to that author
    @@post_count += 1 #everytime we add a song, this needs to increment
  end

def add_post_by_title(name) #takes in argument of a post title name
  post = Post.new(name) #creates a new post with it
  add_post(post) #associates the post and author (that is what we did in the #add_post method, so here we are just calling it)
end

def self.post_count #is a class method that returns total numer of posts associated with all existing authors
  @@post_count
end

end
