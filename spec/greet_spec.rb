require_relative '../lib/greet'

RSpec.describe "greet user method" do
  it "takes a name and returns a gretting" do
    result = greet("Jane")
    expect(result).to eq "Hello, Jane!"
  end
end
