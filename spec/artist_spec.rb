require "spec_helper"

describe "Artist" do

  let!(:adele) { Artist.new("Adele") }
  let!(:hello) { Song.new("Hello", adele)}

  describe "#new" do
    it "is initialized with a name" do
      expect{Artist.new("Beyonce")}.to_not raise_error
    end
  end

  describe "#name" do
    it "has an attr_accessor for name" do
      expect(adele.name).to eq("Adele")
    end
  end

  describe "#songs" do
    it "selects the songs from the Song class which have `self` as the artist" do
      expect(adele.songs).to be_a(Array)
      expect(adele.songs).to include(hello)
    end

    it "does not select the songs which don't 'belong' to itself" do
      nintynine_problems = Song.new("Ninty Nine Problems")
      expect(adele.songs).to be_a(Array)
      expect(adele.songs).to include(hello)
      expect(adele.songs).to_not include(nintynine_problems)
    end
  end

  describe "#add_song_by_name" do
    it "takes in an argument of a song name, creates a new song with it and associates the song and artist" do
      adele.add_song_by_name("Rolling in the Deep")
      expect(adele.songs.last.name).to eq("Rolling in the Deep")
      expect(adele.songs.last.artist).to eq(adele)
    end
  end
end
