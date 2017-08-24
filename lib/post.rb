class Post

	attr_accessor :title, :has_parent

	def initialize(title)
		@title = title
		self.has_parent = false
	end

	def author=(name)
		self.has_parent = true
		@author = name
	end

	def author
		@author
	end 

	def author_name
		if has_parent == true
			return self.author.name
		else
			return nil
		end
	end 

end 