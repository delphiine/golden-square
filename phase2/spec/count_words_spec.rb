require 'count_words'

RSpec.describe 'count_words' do
    it 'returns the number of characters when passed a string' do
        expect(count_words("hello")).to eq 5
    end
end