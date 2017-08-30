class Author

  attr_accessor :name, :posts


  @@post_count = 0

  #Author #new is initialized with a name
  #Author #new is initialized with an empty collection of posts

  def initialize(name)
    @name = name
    @posts = []
  end

  #Author #name has an attr_accessor for name
  #Author #name #posts has many posts

  #Author #name #add_post takes in an argument of a post and adds that post to the author's collection and tells the post that it belongs to that author

    def add_post(post)
      @posts << post
      post.author = self
      @@post_count += 1
    end


  #Author #name #add_post_by_title takes in an argument of a post title, creates a new post with it and associates the post and author

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  #Author #name .post_count is a class method that returns the total number of posts associated to all existing authors

  # Author #name .post_count uses the class variable, @@post_count

  def self.post_count
    @@post_count
  end

end
