class Author
	attr_accessor :name, :posts

	@@post_count = 0
	@@authors = []

	def initialize(name)
		@name = name
		@posts = []
		@@authors << self
	end

	def add_post(post)
		post.author = self
		@posts << post
	end

	def add_post_by_title(post_string)
		post = Post.new(post_string)
		post.author = self
		@posts << post
	end

	def self.post_count
		@@post_count = @@authors.map {|f| f.posts.count}.reduce(:+)
	end

end