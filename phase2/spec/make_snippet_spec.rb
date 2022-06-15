require 'make_snippet'

RSpec.describe 'make snippet' do
    it "returns the first five words and '...' when given a string as an argument" do
        expect(make_snippet("dear diary, today was a great day")).to eq "dear diary, today was a ..."
    end 
end