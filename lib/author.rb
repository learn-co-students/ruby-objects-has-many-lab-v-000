class Author
  attr_accessor :name, :posts
  @@post_count=0

###########################
  def initialize(n)

    @name=n
    @posts = []
  end
  ###########################

  def posts
    @posts
  end
  ###########################
 def add_post(post)
   @@post_count += 1
   @posts << post
   post.author = self
 end
 ###########################
def add_post_by_title(title)
   @@post_count += 1
   post=Post.new(title)
   post.author=self
   @posts << post


end
###########################
def self.post_count
  @@post_count
end
###########################

end
