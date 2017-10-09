class Post

    attr_accessor :author, :title

    def initialize(title)
      @title = title
    end

    def author_name
      self.author&.name  #use safe navigation operator "&" to return nil if class author doesn't exist
    end

end
