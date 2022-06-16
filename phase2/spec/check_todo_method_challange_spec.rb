require 'check_todo_method_challange'

RSpec.describe 'Check string' do
    it "Returns the boolean'true' when a string containing the phrase '#TODO' is passed as an arguement" do
        expect(check_string("This is my #TODO list")).to eq true
    end
    it "Returns the boolean 'false' when the method is passed as string that doesn't include the string '#TODO'" do
        expect(check_string("This is just another list")).to eq false
    end
end