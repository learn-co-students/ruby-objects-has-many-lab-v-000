class Author
  attr_accessor :name, :author


  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post_title)
    @posts << post_title
    post_title.author  = self

  end

  def add_post_by_title(post_title)
    posting = Post.new(post_title)
    @posts << posting
    posting.author = self

  end

  def posts
    @posts
  end

  def self.post_count
    Post.all.count
  end

end
