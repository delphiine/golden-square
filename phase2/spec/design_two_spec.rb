require 'design_two'

RSpec.describe 'grammar_checker' do
    it "Fails when method is given an empty string" do
        expect {grammar_checker("")}.to raise_error "Not a sentence."
    end
    it "Returns 'Your grammar is correct' if a string starts with capital letter and ends with full stop" do
        expect(grammar_checker("Hello, world.")).to eq "Your grammar is correct"
    end
    it "Reminds the user to capitalize their sentence" do
        expect(grammar_checker("hello, world.")).to eq "Remember to capitalize your sentence"
    end
    it "Reminds the user to add a full stop at the end of their sentence" do
        expect(grammar_checker("Hello, world")).to eq "Please review your punctuation"
    end
end
