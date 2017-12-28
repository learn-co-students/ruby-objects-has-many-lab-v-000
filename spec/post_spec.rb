require "spec_helper"

describe "Post" do

  let!(:author) { Author.new("Sophie") }
  let!(:post) {Post.new("My Blog Post!", author)}

  describe 'Post' do
    it "is has a class variable @@all" do
      expect(Post.class_variable_get(:@@all)).to be_a(Array)
    end

    describe '.all' do
      it "returns the @@all array" do
        all = Post.class_variable_get(:@@all)
        posts = Post.all
        expect(posts).to be_a(Array)
        expect(posts).to be(all)
      end
    end
  end

  describe "#new" do
    it "is initialized with an argument of a title and an optional author object" do
      expect{Post.new("Hello World", author)}.to_not raise_error
      expect{Post.new("Hi Again World")}.to_not raise_error, 'The author argument should be optional!'
    end

    it "adds self to the @@all array" do
      expect(Post.all).to include(post)
    end
  end

  describe "#title" do
    it "has a title" do
      expect(post.title).to eq("My Blog Post!")
    end
  end

  describe "#author" do
    it "belongs to an author" do
      expect(post.author).to eq(author)
    end
  end

  describe "#author_name" do
    it "knows the name of it's author" do
      expect(post.author_name).to eq("Sophie")
    end

    it "returns nil if the post does not have an author" do
      no_author_post = Post.new("I feel kinda authorless!")
      expect(no_author_post.author_name).to eq nil
    end
  end
end
