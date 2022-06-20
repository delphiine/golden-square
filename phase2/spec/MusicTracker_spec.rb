require 'MusicTracker'

RSpec.describe 'Creates a list of songs' do
    it 'returns the name and artist of a song when added to the list' do
        list = MusicTracker.new
        list.add("ABBA", "Dancing Queen")
        expect(list.print_list).to eq "ABBA - Dancing Queen"
    end
    it 'returns a list of songs on separate lines when multiple songs are added' do
        list = MusicTracker.new
        list.add("ABBA", "Dancing Queen")
        list.add("Mariah", "Hero")
        expect(list.print_list).to eq "ABBA - Dancing Queen\nMariah - Hero"
    end
    it 'returns an error message when user tries to print an empty list' do
        list = MusicTracker.new
        expect{list.print_list}.to raise_error "Your list is empty"
    end
end