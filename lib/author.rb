class Author
  attr_accessor :name, :posts
  @@post_count=0
  def initialize(n) @name=n; @posts=[] end
  def self.post_count() @@post_count end
  def add_post(s) @posts<<s; s.author=self; @@post_count+=1 end
  def add_post_by_title(n) s=Post.new(n); s.author=self; @posts<<s; @@post_count+=1 end
end
