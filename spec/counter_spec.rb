require 'counter'

RSpec.describe 'returns report of counter' do
    it 'test initialization' do 
        new_counter = Counter.new
        expect(new_counter).to be_a(Counter)
    end
    it 'test adding 1' do
        new_counter = Counter.new
        new_counter.add(1)
        expect(new_counter.report).to eq "Counted to 1 so far."
    end
end