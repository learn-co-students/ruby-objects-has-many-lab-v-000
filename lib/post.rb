class Post
attr_accessor :post, :author, :title
def initialize(post)
  @post = post

end

def initialize(title)
  @title = title
end


def author_name

  if author
    author.name
  else
    nil
end
end
end
