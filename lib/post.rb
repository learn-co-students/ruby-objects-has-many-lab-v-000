class Post

attr_accessor :author, :title

def initialize(title)
@title = title
end

def author_name

if self.author != nil
self.author.name
else
nil

end
end


end

