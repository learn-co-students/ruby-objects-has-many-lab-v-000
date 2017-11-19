class Post
     attr_accessor :name, :title , :author, :post
     
     def initialize(title)
          @title = title
     end

    def author_name
         self.author == nil ? nil : self.author.name
    end
     
end