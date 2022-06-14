require 'counter'

RSpec.describe 'returns report of counter' do
    it 'test initialization' do 
        new_counter = Counter.new
        expect(new_counter).to be_a(Counter)
    end
end