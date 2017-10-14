class Post
attr_accessor :author, :title

def initialize(title)
  self.title = title
end

def author_name
  if(self.author == nil)
    nil
  else
  self.author.name
  end
end

end
