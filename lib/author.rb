class Author
  attr_accessor :name, :posts

  @@authors=[]

  def initialize(name)
    @name=name
    @posts=[]
    @@authors<<self
  end

  def add_post_by_title(title)
    post=Post.new(title)
    post.author= self
    @posts<<post
  end

  def add_post(post)
    post.author= self
    @posts<<post
  end

  def self.post_count
    total=0
    @@authors.each do |author|
      total+=author.posts.length
    end
    total
  end

end
