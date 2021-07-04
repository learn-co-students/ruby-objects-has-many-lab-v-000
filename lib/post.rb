class Post
  attr_accessor :title, :author
    @@all = [] #global variable set to an array
    
  def initialize(title) #do these things when #new is used
    @title = title #assign argument to instance variable
    @@all << self #pushes new instance into a global variable upon initialization
  end
  
  def self.all #class method. returns an array of all post instances that have been created
    @@all
  end
  
  def author_name #instance will check if it has an author
    self.author ? self.author.name : nil
  end
  
end