require 'diary'

describe Diary do
    it 'reads contents' do
        diary = Diary.new("Test")
        expect(diary.read).to eq "Test"
    end
end