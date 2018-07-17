class Author
  attr_accessor :name, :title #setter/getter Author's name.
  attr_reader :posts

  @@post_count = 0

  def initialize(name) #instances initialized via argument of Author's name
    @name = name #set the Authors name local var to an instance var
    @posts = []
    end

  def add_post(title) #method for adding a post to the author takes in an argument of the post's title
    @posts << title
    title.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count #class method! need to call it on itself
    @@post_count
  end
end
