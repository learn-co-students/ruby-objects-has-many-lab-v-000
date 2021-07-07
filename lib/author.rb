class Author

  attr_accessor :name, :posts

@@all = []

  def self.post_count
    counter = 0 #need something to track number of posts
    @@all.each do |author| #I want to cycle through all authors and pull number posts by each author
      counter += author.posts.length


    end
    counter
  end

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    self.add_post(post)
  end

  def author_name(name)
    Post.author_name = name
  end

end
