class Author
attr_accessor :name
@@post_count = 0
@@array_of_posts = []


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
    @@array_of_posts << post 
  end

  def add_post_by_title(title)
    post_by_title = Post.new(title)
    @posts << post_by_title
    post_by_title.author = self
    @@array_of_posts << post_by_title

  end

def self.post_count
  @@post_count = @@array_of_posts.length
end

end