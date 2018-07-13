class Author
  attr_accessor :name
  @@all = []

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
     @@all << post
   end

   def add_post_by_title(name)
     post = Post.new(name)
     add_post(post)
   end

   def self.post_count
     @@all.count
   end
end
