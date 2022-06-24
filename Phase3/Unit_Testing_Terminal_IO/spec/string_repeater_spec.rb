require 'string_repeater'

RSpec.describe StringRepeater do
    it "Asks for a string and number of times to repeat it. Puts the results" do
        io = double :io
        expect(io).to receive(:puts).with("Please enter a word: ").ordered
        expect(io).to receive(:gets).and_return("Hello!").ordered
        expect(io).to receive(:puts).with("Please enter the number of times to repeat the word: ").ordered
        expect(io).to receive(:gets).and_return("5").ordered
        expect(io).to receive(:puts).and_return("Hello! Hello! Hello! Hello! Hello! ").ordered
        string_repeater = StringRepeater.new(io)
        result = string_repeater.repeater
        expect(result).to eq "Hello! Hello! Hello! Hello! Hello! "
    end
end
