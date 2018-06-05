class Author

  attr_accessor :name, :posts

  @@all = 0;

  def initialize(name)
    @name = name;
    @posts = [];
  end

  def add_post(post)
    @posts << post;
    @@all += 1;
    post.author = self;
  end

  def add_post_by_title(title)
    post = Post.new(title);
    @posts << post;
    @@all += 1;
    post.author = self;
  end

  def self.post_count
    @@all
  end

end
