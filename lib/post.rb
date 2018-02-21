require 'pry'
class Post
      attr_accessor :author, :title

      def initialize(name)
            @title = name
      end

      def author_name
            @author ? self.author.name : nil
      #  binding.pry
      end

end

#::Author
#sophie = Author.new("Sophie")
