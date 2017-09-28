require 'pry'
class Post
attr_accessor :title, :author, :name
#how come author and name (from Author class are the same thing -- why am I so confused by thsi. )
def initialize(title)
  @title = title

end

def author_name
  if self.author
    self.author.name
    binding.pry
  else
    nil
  end
end

end
