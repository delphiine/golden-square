require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
    it "subtract two numbers" do
        io = double :io
        expect(io).to receive(:puts).with("Enter a number: ").ordered
        expect(io).to receive(:gets).and_return("3").ordered
        expect(io).to receive(:puts).with("Enter another number: ").ordered
        expect(io).to receive(:gets).and_return("1").ordered
        expect(io).to receive(:puts).and_return("2").ordered
        interactive_calculator = InteractiveCalculator.new(io)
        result = interactive_calculator.calculate
        expect(result).to eq "2"
    end
end