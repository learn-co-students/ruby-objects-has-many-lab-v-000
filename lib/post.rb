class Post

  attr_accessor :title, :author, :name

def initialize(title)
  @title = title
end

def author_name
  if self.author
    self.author.name
  else
    nil
  end 
end

end
