require 'diary'
require 'diary_entry'

RSpec.describe 'integratation' do
     context "after adding some entries" do
        it "lists out the entries added" do
            diary = Diary.new
            diary_entry1 = DiaryEntry.new("title", "contents")
            diary_entry2 = DiaryEntry.new("title2", "contents2")
            diary.add(diary_entry1)
            diary.add(diary_entry2)
            expect(diary.all).to eq [diary_entry1, diary_entry2]
        end

        describe "counting total number of words" do
            it "returns the number of words in all diary entries" do
                diary = Diary.new
                diary_entry1 = DiaryEntry.new("title", "contents")
                diary_entry2 = DiaryEntry.new("title2", "contents2")
                diary.add(diary_entry1)
                diary.add(diary_entry2)
                expect(diary.count_words).to eq 2
            end
        end

        describe "estimating rading time" do 
            it 'fails when wpm is 0' do
                diary = Diary.new
                diary_entry = DiaryEntry.new("title", "contents 1")
                expect {diary.reading_time(0)}.to raise_error('wpm must be positive.')
            end
            it "returns an estimation of how long it takes to read the diary entries where it fits exactly" do
                diary = Diary.new
                diary_entry1 = DiaryEntry.new("title", "contents 1")
                diary_entry2 = DiaryEntry.new("title2", "contents 2")
                diary.add(diary_entry1)
                diary.add(diary_entry2)
                expect(diary.reading_time(2)).to eq 2
            end
            it "returns an estimation of how long it takes to read all diary entries" do
                diary = Diary.new
                diary_entry1 = DiaryEntry.new("title", "contents")
                diary_entry2 = DiaryEntry.new("title2", "contents 2")
                diary.add(diary_entry1)
                diary.add(diary_entry2)
                expect(diary.reading_time(2)).to eq 2
            end
        end

        describe "best reading time entry behavoir" do
            context "where we just have one readable entry" do
                it "returns that entry" do
                    diary = Diary.new
                    diary_entry = DiaryEntry.new("title", "some contents")
                    diary.add(diary_entry)
                    results = diary.find_best_entry_for_reading_time(2, 1)
                    expect(results).to eq diary_entry
                end
            end
            context "where we just have one entry and it is unreadable in the time" do
                it "returns nil" do
                    diary = Diary.new
                    diary_entry = DiaryEntry.new("title", "some fun and exciting content")
                    diary.add(diary_entry)
                    results = diary.find_best_entry_for_reading_time(2, 1)
                    expect(results).to eq nil
                end
            end
            context "where there is more than one entry" do
                it "returns the longest entry the user can read within the given time" do
                    diary = Diary.new
                    best_entry = DiaryEntry.new("title", "some content")
                    diary.add(best_entry)
                    diary.add(DiaryEntry.new("title", "some fun and exciting content"))
                    diary.add(DiaryEntry.new("title", "some fun content"))
                    results = diary.find_best_entry_for_reading_time(2, 1)
                    expect(results).to eq best_entry
                end
            end
        end

    end
end

