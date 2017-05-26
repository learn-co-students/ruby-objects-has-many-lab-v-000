class Post
    attr_accessor :author, :title 
    def initialize(title)
       @title = title 
    end

    def author_name
        if @author == nil
            nil
        else
            @author.name
        end
    end
end

post = Post.new("title")
post.author_name