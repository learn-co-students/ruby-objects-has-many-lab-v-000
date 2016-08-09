#new is initialized with a name
#new is initialized with an empty collection of posts
#has an attr_accessor for name


class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def new(post)
    @posts << post
  end

#posts has many posts

  def posts
    @posts
  end

  #add_post takes in an argument of a post and adds that post to the author's collection and tells the post that it belongs to that author

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

#add_post_by_title takes in an argument of a post title, creates a new post with it and associates the post and author

  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title
    @@post_count += 1
    title.author = self
  end  

#artist_name knows the name of its author
#artist_name returns nil if the song does not have an artist

  def self.post_count
    @@post_count
  end
  
end