class Author
<<<<<<< HEAD
  
  @@post_count = 0

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1

  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
=======

  attr_accessor :name

@@post_count = 0

   def initialize(name)
     @name = name
     @posts = []
   end

   def posts
     @posts
   end

   def add_post(post)
     @posts << post
     post.author = self
     @@post_count += 1
   end

   def add_post_by_title(title)
     title = Post.new(title)
     @posts << title
     title.author = self
     @@post_count += 1
   end

   def self.post_count
     @@post_count
end
>>>>>>> 135035c388aad048a91c77ee3c3237b9010206a2
end
