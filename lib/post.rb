class Post
attr_accessor :author, :title

  def initialize(post_title)
    @title = post_title
  end
  def author_name #called directly by spec, was using author
    if self.author #does this instance have the added, hybridized Author attributes?
      self.author.name #doesn't own this, requests the author's name from the parent class (or rather retrieves from its own hybrid properties)
    else
      nil
    end
  end






end
