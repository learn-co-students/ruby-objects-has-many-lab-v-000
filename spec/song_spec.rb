require "spec_helper"

describe "Song" do

  let!(:artist) {Artist.new("Drake")}
  let!(:song) {Song.new("Survivor", artist)}

  # is this the right way to run class tests?
  describe 'Song' do
    it "is has a class variable @@all" do
      expect(Song.class_variable_get(:@@all)).to be_a(Array)
    end

    describe '.all' do
      it "returns the @@all array" do
        all = Song.class_variable_get(:@@all)
        songs = Song.all
        expect(songs).to be_a(Array)
        expect(songs).to be(all)
      end
    end
  end

  describe "#new" do
    it "is initialized with an argument of a name and an optional artist object" do
      expect{Song.new("Say my Name", artist)}.to_not raise_error
      expect{Song.new("I have no Artist")}.to_not raise_error, 'The artist argument should be optional!'
    end

    it "adds self to the @@all array" do
      expect(Song.all).to include(song)
    end
  end


  describe "#name" do
    it "has a name" do
      expect(song.name).to eq("Survivor")
    end
  end

  describe "#artist" do
    it "belongs to an artist" do
      expect(song.artist).to eq(artist)
    end
  end

  describe "#artist_name" do
    it "knows the name of it's artist" do
      expect(song.artist_name).to eq("Drake")
    end

    it "returns nil if the song does not have an artist" do
      song = Song.new("Cool for the Summer")
      expect(song.artist_name).to eq nil
    end
  end
end
