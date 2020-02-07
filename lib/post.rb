class Post
    attr_accessor :title, :author, :author_name

    def initialize(title=nil)
      @title = title
    end

    def author_name
      @author == nil ? @author_name = nil : @author_name = self.author.name 
    end



end  #  End of Class
