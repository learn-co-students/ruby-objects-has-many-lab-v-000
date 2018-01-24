class Author
   attr_accessor :name
   
   @@post_count=0
   
   def initialize (name)
       @name=name
       @posts=[]
   end
   
   def posts
       @posts
   end
   
   def add_post (words)
       @posts << words
       words.author=self 
       @@post_count=@@post_count+1
   end
   
   def add_post_by_title (title)
      new_post=Post.new(title)
      @posts << new_post
      new_post.author=self
      @@post_count=@@post_count+1
   end
   
   def self.post_count
       @@post_count
   end
end