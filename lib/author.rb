class Author
   @@all = 0
   attr_accessor :name
   attr_reader :posts
   def initialize(name)
     @name =  name
     @posts = []
   end
   def add_post(post)
      @posts << post
      post.author = self
      @@all += 1
   end
   def add_post_by_title(title)
     post = Post.new(title)
     @posts << post
     post.author = self
     @@all += 1
   end
   def self.post_count
     @@all
   end
end
