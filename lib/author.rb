class Author
  attr_accessor :name, :posts

  @@post_count = 0                     #to tally posts, starts at 0

  def initialize(name)                 #new authors are assigned names, each author instance has a posts array that starts empty
    @name = name
    @posts = []
  end

  def add_post(post)                   #author_1.add_post(post)
    @posts << post                     #adds post to author's post array
    post.author = self                 #assigns incoming post to current author
    @@post_count += 1                  #increases post count tally
  end

  def add_post_by_title(title)        #author_1.add_post_by_title(title)
    post = Post.new(title)            #uses Post class to create new post
    @posts << post                    #same stuff add_post
    post.author = self
    @@post_count += 1
  end

  def self.post_count                 #returns tally of all posts by all authors
    @@post_count
  end

end
