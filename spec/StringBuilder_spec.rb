require 'StringBuilder'

RSpec.describe StringBuilder do
    it 'test initialization of StringBuilder' do
        expect(StringBuilder.new).to be_a(StringBuilder)
    end
    it 'test returns empty string when initialised and `output` is called' do
        str = StringBuilder.new
        expect(str.output).to eq ""
    end 
    it 'test returns 0 when initialised and `size` is called' do
        str = StringBuilder.new
        expect(str.size).to eq 0
    end 
    it 'test returns 0 when initialised and `add("Hello")` and `size` is called' do
        str = StringBuilder.new
        str.add("Hello")
        expect(str.size).to eq 5
    end 
    it 'test returns `Hello` when initialised and `add("Hello")` and `output` is called' do
        str = StringBuilder.new
        str.add("Hello")
        expect(str.output).to eq 'Hello'
    end 
    it 'test returns `HelloWorld` when initialised and `add("Hello")` and  `add("World")` and `output` is called' do
        str = StringBuilder.new
        str.add("Hello")
        str.add("World")
        expect(str.output).to eq 'HelloWorld'
    end 
end