require 'music_library'
require 'track'

RSpec.describe MusicLibrary do
    context "Returns list of tracks" do
        it "Returns 1 track" do
            music_library = MusicLibrary.new
            track_1 = Track.new("title", "artist")
            music_library.add(track_1)
            result = music_library.all
            expect(result).to eq [track_1]
        end

        it "Returns multiple tracks" do
            music_library = MusicLibrary.new
            track_1 = Track.new("title", "artist")
            track_2 = Track.new("title", "artist")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.all
            expect(result).to eq [track_1, track_2]
        end
    end

    context "Returns a list of tracks that match the keyword" do
        it "Returns a track where the keyword matches the artist's name" do
            music_library = MusicLibrary.new
            track_1 = Track.new("title", "sad artist")
            track_2 = Track.new("title", "fun artist")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search("fun")
            expect(result).to eq [track_2]
        end

        it "Returns a track where the keyword matches the title" do
            music_library = MusicLibrary.new
            track_1 = Track.new("fun title", "artist")
            track_2 = Track.new("sad title", "artist")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search("fun")
            expect(result).to eq [track_1]
        end

        it "Returns all tracks where the keyword matches the title or the artist's name" do
            music_library = MusicLibrary.new
            track_1 = Track.new("fun title", "sad artist")
            track_2 = Track.new("sad title", "fun artist")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search("fun")
            expect(result).to eq [track_1, track_2]
        end
    end
end