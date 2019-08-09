class Author
attr_accessor :name

@@post_count = 0 #post count starts at zero

def initialize(name)
@name = name
@posts = []
end

def add_post(post)
self.posts << post
post.author = self
@@post_count +=1 # for every new post the count goes up by 1
end


def add_post_by_title(title)
post = Post.new(title)
self.posts << post
post.author = self
@@post_count +=1 # for every new post the count goes up by 1
end

def posts
@posts
end

def self.post_count
   @@post_count # keeps track of number of posts
 end

end
