class Post
  attr_accessor :author, :title
  def initialize(title)
    @title = title
  end

  def author_name
    #defined?(some_variable) tells you whether or not that variable has been defined
    if defined?(self.author.name)
      self.author.name
    else
      nil
    end

    #can refactor to:
    #@author.nil? ? nil : @author.name
    #or
    #@author.name unless @author == nil
  end
end