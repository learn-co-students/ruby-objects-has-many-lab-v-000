class Post 

attr_accessor :author, :title

def initialize(title)
  @title = title
end

def author_name
  author != nil ? self.author.name : nil
end

end