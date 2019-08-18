class Post
  attr_accessor :author
  attr_reader :title

  def initialize(post_title)
  	@title = post_title
  end

  def author_name
  	if self.author == nil
  		return nil
  	else self.author.name
  	end
  end
end