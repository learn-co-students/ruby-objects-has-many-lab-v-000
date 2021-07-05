class Post

  attr_accessor :title, :author

  @@all = []
  $posts = []

    def initialize(title)
      @title = title
      $posts << self
      @@all << self
    end

    def author_name
      if self.author
        self.author.name
      else
        nil
      end

    end
end
