class Author
attr_accessor :name
@@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

 
  def add_post(existing_post)
    existing_post.author = self
  end  
  
  def add_post_by_title(new_post)
    post = Post.new(new_post)
    post.author = self
  end  
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def self.post_count
    Post.all.count
  end
  
end