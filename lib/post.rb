class Post

	attr_accessor :posts, :author, :name

	def initialize(posts)
		@posts = posts
	end

	def title
		self.posts
	end

	def author_name
		author.name if author != nil
	end
end