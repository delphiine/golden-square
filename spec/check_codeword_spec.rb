require_relative '../lib/check_codeword'

RSpec.describe "check if codeword is correct method" do
    it "returns 'Correct! Come in.' when the codewords is 'horse" do
        result = check_codeword('horse')
        expect(result).to eq "Correct! Come in."
    end
    it "returns 'Close, but nope.' when the first character is 'h' and the last is 'e' " do
        result = check_codeword('home') 
        expect(result).to eq "Close, but nope."
    end
    it "returns 'WRONG!' when the codeword is far from correct" do
        result = check_codeword('door') 
        expect(result).to eq "WRONG!"
    end
end
    