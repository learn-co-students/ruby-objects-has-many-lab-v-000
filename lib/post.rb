class Post
     attr_accessor :name, :post , :title, :author
     
     def initialize(title)
          @title = title
     end

    def author_name
         self.author == nil ? nil : self.author.name
    end
     
end