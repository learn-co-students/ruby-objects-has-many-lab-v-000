class Post

    attr_accessor :author, :title

    def initialize(title)
      @title = title
    end

    def author_name
      if self.author == nil
        self.author
      else
      self.author.name  #there is a problem here, need to return nil if no
      end
    end

end
