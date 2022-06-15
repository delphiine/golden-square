require 'design_one'

RSpec.describe 'time_manager' do
    it "returns how many seconds it takes to read a text when passed a string" do
        expect(time_manager("hello w")).to eq "It will take you 0.6 seconds to read the material"
    end
end