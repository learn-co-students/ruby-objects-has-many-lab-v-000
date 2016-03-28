class Author

  attr_accessor :name, :posts, :author, :title
  def initialize(name)
      @name = name
      @posts = []
  end

  @@post_count = 0

  def posts
      @posts
  end

def add_post(post)
      @posts << post
      post.author = self
      @@post_count += 1
end

def add_post_by_title(title)
      @title = title
       new_instance = Post.new(@title)
       add_post(new_instance)
end

  def self.post_count
    @@post_count
  end

  def author_name
    
  end
  
end