class Post
  attr_accessor :title, :author
  def initialize(title)
    @title=title
    @author=author
  end


    def author_name
      # binding.pry
      if self.author != nil
        self.author.name
      end
      # binding.pry
    end


end
