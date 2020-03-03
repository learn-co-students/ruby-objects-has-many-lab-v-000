class Post

attr_accessor :name, :author, :title

@@post_count = 0

def initialize(title)
  @title = title
  @posts = []
end

def title
  @title
end

def author
  @author
end

def author_name
  if @author
    self.author.name
  else
    nil
  end
end

end
