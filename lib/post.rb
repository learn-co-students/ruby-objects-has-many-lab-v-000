require 'pry'
class Post

attr_accessor :author, :title

def initialize(title)
  @title = title
end

def author_name

  if @author == nil
    return nil
  else
    return @author.name
  end

end

end
