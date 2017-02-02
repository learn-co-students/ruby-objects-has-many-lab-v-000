
class Post

  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author_name
    begin
       self.author.name
    rescue StandardError
      nil
    end  
  end
end
