class Author
  attr_reader :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts #has many posts
    Post.all.select { |post| post.author } #select is returning an array with posts associated with author
  end

  def add_post(post)
    post.author = self #associating the post with an instance author
  end     #and by setting it to self associates it with that author
          #.author comes from post.rb and attached to a post(every post has an author),
          # and it's the same thing as having an instance of the author with a post (in author.rb)

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

end
