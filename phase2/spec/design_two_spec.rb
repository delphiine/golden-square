=begin
require 'design_two'

RSpec.describe 'grammar_checker' do
    it "Returns 'Your grammar is correct' if a string starts with capital letter and ends with full stop" do
        expect(grammar_checker("Hello, world.")).to eq "Your grammar is correct"
    end
end
=end