require 'pry'

class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    #takes in an argument of a post and adds that post to the author's collection and
    #tells the post that it belongs to that author
    @posts << post
    post.author = self
    @@post_count += 1 #adds the new post to the Author's post count
  end

  def add_post_by_title(post_title)
    #takes in an argument of a post title,
    #creates a new post with it and
    #associates the post and author
    new_post = Post.new(post_title)
    @posts << new_post
    new_post.author = self
    @@post_count +=1 #adds the new song to the artists song count
  end

  def self.post_count
    #return the post_count class variable
    @@post_count
  end

end
