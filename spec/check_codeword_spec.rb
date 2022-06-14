require_relative '../lib/check_codeword'

RSpec.describe "check if codeword is correct method" do
    it "returns 'Correct! Come in.' when the codewords is 'horse" do
        result = check_codeword('horse')
        expect(result).to eq "Correct! Come in."
    end
end
    