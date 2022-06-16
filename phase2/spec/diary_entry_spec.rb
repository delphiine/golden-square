require 'diary_entry'

RSpec.describe 'DiaryEntry' do
    it 'returns the title as a string' do
        diary_entry = DiaryEntry.new("wednesday", "abc")
        results = diary_entry.title
        expect(results).to eq "wednesday"
    end
    it 'returns the contents as a string' do
        diary_entry = DiaryEntry.new("wednesday", "abc")
        results = diary_entry.contents
        expect(results).to eq "abc"
    end
    context 'count words method' do
        it "returns the words in the contents as an integer" do
            diary_entry = DiaryEntry.new("wednesday", "abc")
            results = diary_entry.count_words
            expect(results).to eq 1
        end
    end
    it 'returns an integer representing an estimate of the reading time in minutes for the contents at a given words per minutes' do
        diary_entry = DiaryEntry.new("wednesday", "abs")
        results = diary_entry.reading_time(1)
        expect(results).to eq 1 
    end
    context 'reading_chunck method' do
        it "Returns a string with a chunk of the contents that the user could read in the given number of minutes." do
            diary_entry = DiaryEntry.new("wednesday", "Today I paired with Karolina and it was really nice")
            results = diary_entry.reading_chunk(1, 2)
            expect(results).to eq "Today I"
        end
    end
    it "Returns the remaining words from the content is less than words per minute(s)." do
        diary_entry = DiaryEntry.new("wednesday", "Today I paired with Karolina and it was really nice")
        results1 = diary_entry.reading_chunk(8, 1)
        results2 = diary_entry.reading_chunk(8, 1)
        expect(results2).to eq "really nice"
    end
end
