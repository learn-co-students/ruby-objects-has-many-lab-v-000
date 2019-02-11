class Author
  attr_accessor :name, :post
  @@all_posts_ever = []
  def initialize(name)
    @name = name
    @posts = []

  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@all_posts_ever << post
    post.author = self #<---- self refers to the instantiated author
  end

  def self.post_count
    @@all_posts_ever.count
  end
end #<---- class end
