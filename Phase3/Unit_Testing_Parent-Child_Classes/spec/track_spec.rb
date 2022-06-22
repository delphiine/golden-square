require 'track'

RSpec.describe Track do
    it "Returns true if the keyword matches either the title or artist" do
        track = Track.new("title", "example of song")
        result = track.matches?("song")
        expect(result).to eq true
    end
    it "Returns false if the keyword matches either the title or artist" do
        track = Track.new("title", "example of song")
        result = track.matches?("track")
        expect(result).to eq false
    end
end