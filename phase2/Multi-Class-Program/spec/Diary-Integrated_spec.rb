require 'Diary'
require 'DiaryEntry'
require 'Reading'
require 'TODO'

RSpec.describe 'Diary' do
    context "returns diary entries" do
        it "returns 1 entry" do
            diary = Diary.new
            entry = DiaryEntry.new("title", "content")
            diary.add_entry(entry)
            result = diary.all_entries
            expect(result).to eq [entry]
        end
    end 
    context "returns todos" do
        it "returns 1 todo item" do
            diary = Diary.new
            todo = TODO.new("todo")
            diary.add_todo(todo)
            result = diary.all_todos
            expect(result).to eq [todo]
        end
    end
    context "returns phone numbers from diary contents" do
        it "returns 1 phone number from a diary entry" do
            diary = Diary.new
            phone_number = DiaryEntry.new("title", "071234567")
            diary.add_phone_number(phone_number)
            result = diary.all_phone_numbers
            expect(result).to eq [phone_number]
        end
    end
end