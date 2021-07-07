class Author
  attr_accessor :name
  @@posts=[]
  def initialize(name)
    @name=name
  end
  def add_post(title)
    Post.new(title)
    @@posts << title
    title.author=self
  end
    def add_post_by_title(new_post)
    title=Post.new(new_post)
    @@posts << title
    title.author=self
  end
  def posts
    @@posts
  end
  def Author.post_count
    @@posts.length
  end

end