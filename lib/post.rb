require 'pry'
class Post

attr_accessor :name, :genre, :title

def initialize(title, author=nil)
  @title=title
  @author=author
end
def author=(author=nil)
  @author=author
end

def author
  @author
end

def author_name
  if author==nil
    return nil
  else
 self.author.name
end

end



end