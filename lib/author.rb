class Author
attr_accessor :posts, :name, :post
@@post_count=0

def initialize(name)
  @name = name
  @posts = []
end

def posts
  @posts
end


def add_post(post_name)
  @posts << post_name
  post_name.author=self
@@post_count +=1
end

def add_post_by_title(title)
post_name=Post.new(title)
self.posts << post_name
post_name.author=self
  @@post_count+=1
end



def self.post_count
  @@post_count
end

end
