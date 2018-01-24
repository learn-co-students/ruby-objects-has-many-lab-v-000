class Author
	attr_accessor :name
	@@post_count= []

	def initialize(name)
		@name = name
		@posts = []
	end

	def posts
		@posts
	end

	def add_post(post)
		@posts << post
		post.author = self
		@@post_count << post
	end

	def add_post_by_title(title)
		post = Post.new(title)
		post.author = self
		@posts << post
		@@post_count << post
	end
 
	def self.post_count
		@@post_count= @@post_count.size
		@@post_count
	end
end