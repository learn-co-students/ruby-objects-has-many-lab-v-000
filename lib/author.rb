class Author

	@@post_count = 0
	attr_accessor :name

	def initialize(name)
		@name = name
		@posts =[]
	end

	def add_post(post)
		@posts << post
		post.author = self
		@@post_count+=1
	end

	def add_post_by_title(title)
		title = Post.new(title)
		add_post(title)
	end

	def self.post_count
		@@post_count
	end

	def posts
		@posts
	end

end