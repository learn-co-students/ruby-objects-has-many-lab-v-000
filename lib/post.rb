require 'pry'

# create class Post  
class Post
  attr_accessor :title, :author
# create initialize method with argument (title) 
  def initialize(title)
   @title = title  
  end
# create title method - used in attr_accessor  
# create author method - used in attr_accessor 
# create author_name method 
  def author_name 
    name = self.author.name
  end 
  
end 
