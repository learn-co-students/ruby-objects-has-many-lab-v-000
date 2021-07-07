class Post
  attr_accessor :author, :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
      if self.author
        self.author.name
      else
        nil
      end
    end
  end
  #spec
  # describe "#author_name" do
  #   it "knows the name of its author" do
  #     sophie = Author.new("Sophie")
  #     post.author = sophie
  #     expect(post.author_name).to eq("Sophie")
  #   en
