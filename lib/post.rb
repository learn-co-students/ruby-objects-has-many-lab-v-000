require 'pry'

class Post

	attr_accessor :title, :author

	def initialize(title)
		@title = title
	end

	def author_name
		begin
			return self.author.name
		rescue
			return nil
		end
	end

end
