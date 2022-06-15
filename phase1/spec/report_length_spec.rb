require 'report_length'

RSpec.describe "Takes a string and returns a string with information about its length" do
    it "Returns 'this string was 5 characters long' when passed a five character long string" do
        expect(report_length("hello")).to eq "This string was 5 characters long."
    end
end
