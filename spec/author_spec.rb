require "spec_helper"

describe "Author" do

  let!(:betty) { Author.new("Betty") }
  let!(:post) { Post.new("I love to program while drinking chamomile tea!", betty) }

  describe "#new" do
    it "is initialized with a name" do
      expect{Author.new("Betty")}.to_not raise_error
    end
  end

  describe "#name" do
    it "has an attr_accessor for name" do
      expect(betty.name).to eq("Betty")
    end
  end

  describe "#posts" do
    it "selects the posts from the Post class which have `self` as the author" do
      expect(betty.posts).to be_a(Array)
      expect(betty.posts).to include(post)
    end

    it "does not select the posts which don't 'belong' to itself" do
      no_author = Post.new("I feel like I made myself!")
      betty_posts = betty.posts
      expect(betty_posts).to be_a(Array)
      expect(betty_posts).to include(post)
      expect(betty_posts).to_not include(no_author)
    end
  end

  describe "#add_post_by_title" do
    it "takes in an argument of a post title, creates a new post with it and associates the post and author" do
      betty.add_post_by_title("My Great Blog Post")
      expect(betty.posts.last.title).to eq("My Great Blog Post")
      expect(betty.posts.last.author).to eq(betty)
    end
  end
end
