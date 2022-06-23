require 'diary'
require 'secret_diary'

describe "Diary integration" do
    it "initially raises error when trying to read secret diary" do
        diary = Diary.new("Delphine")
        secret_diary = SecretDiary.new(diary)
        expect{secret_diary.read}.to raise_error "Go away!"
    end
    
    it "reads the diary after unlocking" do
        diary = Diary.new("Delphine")
        secret_diary = SecretDiary.new(diary)
        secret_diary.unlock
        expect(secret_diary.read).to eq "Delphine"
    end
    
    it "raises error when attempting to read locked diary" do
        diary = Diary.new("Delphine")
        secret_diary = SecretDiary.new(diary)
        secret_diary.unlock
        secret_diary.lock
        expect {secret_diary.read}.to raise_error "Go away!"
    end
end