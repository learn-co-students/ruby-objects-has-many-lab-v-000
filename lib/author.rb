class Author 
  attr_accessor :name
  @@authors=[]
  
  def initialize(name)
    @name=name
    @posts =[]
    @@authors << self
  end
  def add_post(post)
    post.author=self 
    @posts << post 
  end 
    
  def add_post_by_title(title)
    n=Post.new(title)
    n.author=self 
    @posts << n 
  end 
  def posts 
    @posts 
  end
  
  def self.post_count 
    l=0 
    @@authors.each{|a| l+=a.posts.length}
    l
  end
end