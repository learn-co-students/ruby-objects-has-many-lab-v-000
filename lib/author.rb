class Author  # Has Many posts

attr_accessor :name, :post, :posts
	@@all = []

	def initialize(name)
		@name = name
		@posts = []
		@@all << self
	end

	def self.all
		@@all
	end

	def posts # author.posts = return all posts by author instance
		@posts
	end

# add new post object to an author object
  def add_post_by_title(post_title) #enter string title
    post = Post.new(post_title) # initialize new post by title
    self.add_post(post)	# call add_post method to
	end     							# assign post to this author & add to his/her collection

#author.add_post
	def add_post(post) ### arg is post instance ###
		post.author = self
		post.author.posts << post
	end

#iterate thru each author.posts array
	def self.post_count
    Post.all.count
	end
#class end below
end
