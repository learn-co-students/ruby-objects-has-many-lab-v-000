class Author
  
attr_accessor :name, :posts, :author, :posts_count

@@posts = []

def initialize(name)
  @name = name
  @posts = []
end 

def add_post(new_post)
  @posts << new_post
  @@posts << new_post
  new_post.author = self
end 
 
def add_post_by_title(post_title)
  new_post = Post.new(post_title)
  new_post.author = self
  new_post.title = post_title
  @posts << new_post
  @@posts << post_title
end 

def self.post_count 
  @@posts.count
end
  
  
  
  
  
  
  
  
  
  
end


