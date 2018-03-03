class Post
  attr_accessor :name, :author, :title, :author_name

    def initialize(name)
      @name = name
    end

    def title
      self.title = self.name
    end

    def author_name
      if self.author
        self.author.name
      else
        nil
      end
    end

end # =>  End Post Class
