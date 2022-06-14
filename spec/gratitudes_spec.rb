require 'gratitudes'

RSpec.describe Gratitudes do
    it "Testing if Gratitudes class returns correct value when the 'format' method is called" do
        gratitude_list = Gratitudes.new
        expect(gratitude_list.format()).to eq "Be grateful for: "
    end
    it "Testing if Gratitudes class returns correct value after adding an item to gratitude list" do
        gratitude_list = Gratitudes.new
        gratitude_list.add("cheers")
        expect(gratitude_list.format()).to eq "Be grateful for: cheers"
    end
    it "Testing if Gratitudes class returns correct value after adding multiple items to gratitude list" do
        gratitude_list = Gratitudes.new
        gratitude_list.add("cheers")
        gratitude_list.add("hello")
        expect(gratitude_list.format()).to eq "Be grateful for: cheers, hello"
    end
end