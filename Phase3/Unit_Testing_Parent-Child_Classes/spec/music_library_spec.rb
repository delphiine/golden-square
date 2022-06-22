require 'music_library'

RSpec.describe MusicLibrary do
    context "Returns list of tracks" do
        it "Returns list of 1 track" do
            music_library = MusicLibrary.new
            track_1 = double(:mock_track, :title => "title", :artist => "artist")
            music_library.add(track_1)
            result = music_library.all
            expect(result).to eq [track_1]
        end

        it "Returns multiple tracks" do
            music_library = MusicLibrary.new
            track_1 = double(:mock_track, :title => "title", :artist => "artist")
            track_2 = double(:mock_track, :title => "title", :artist => "artist")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.all
            expect(result).to eq [track_1, track_2]
        end
    end

    context "Returns a list of tracks that match the keyword" do
        it "Returns a track when only 1 track has been added" do
            music_library = MusicLibrary.new
            track_1 = double(:mock_track, :matches? => true)
            music_library.add(track_1)
            result = music_library.search("fun")
            expect(result).to eq [track_1]
        end

        it "Returns all tracks that has the keyword" do
            music_library = MusicLibrary.new
            track_1 = double(:mock_track, :matches? => false)
            track_2 = double(:mock_track, :matches? => true)
            track_3 = double(:mock_track, :matches? => true)
            music_library.add(track_1)
            music_library.add(track_2)
            music_library.add(track_3)
            result = music_library.search("fun")
            expect(result).to eq [track_2, track_3]
        end
    end
end




    