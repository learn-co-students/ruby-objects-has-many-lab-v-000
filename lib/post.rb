class Post
  attr_accessor :title, :author  #author contains the instances of Author
  @@all=[]        #contains all instances of Post

    def initialize(title)
      @title=title
      @@all <<self
    end

    def self.all
    @@all
    end

    def author_name
      if self.author == nil
        nil
      else
        self.author.name
      end
    end

end
