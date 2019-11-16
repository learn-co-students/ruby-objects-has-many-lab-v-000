require_relative "./post"
require 'pry'

class Author
    attr_accessor :name, :posts

    @@all_posts = []

  def self.post_database
    @@all_posts
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  # ADD POSTS SECTION

  def add_post(post)
    post.author = self
    self.posts << post
    self.class.add_post_to_database(post)
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    self.posts << post
    self.class.add_post_to_database(post)
  end

  # CLASS METHODS SECTION

  def self.add_post_to_database(post)
    post_database << post
  end

  def self.post_count
    post_database.length
  end

end
