class Author 
  attr_accessor :name, :author
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  def add_post(article)
    @posts << article
    @@all << article
    article.author = self 
    article
  end 
  
  def posts 
    @posts 
  end 
  
  def add_post_by_title(title)
    article = Post.new(title)
    @posts << article 
    @@all << article
    article.author = self
    article 
  end
  
  def self.post_count
    @@all.size
  end
end