class Post 
  attr_accessor :name, :title, :author 
  def initialize(title)
    @title = title
  end
    
    def author_name
      if author
        return author.name
      else
        return nil 
      end
    end
      
end