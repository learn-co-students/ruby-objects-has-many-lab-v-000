class Post
    attr_accessor :author, :title

    def initialize(title)
        @title= title
    end

    def author_name
        if self.author != nil
            return self.author.name
        else
            return nil
        end
    end

end
