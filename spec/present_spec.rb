require 'present'

RSpec.describe Present do
    it 'return an error message if the wrap method is called twice' do
        test_wrap = Present.new 
        test_wrap.wrap("hi")
        expect{test_wrap.wrap("hey")}.to raise_error "A contents has already been wrapped."
    end
    it 'return an error message if the class has been initialized but no values have been given yet' do
        test_unwrap = Present.new 
        expect{test_unwrap.unwrap}.to raise_error "No contents have been wrapped." 
    end
    it 'return an error message if there is nothing to unwrap' do
        test_unwrap = Present.new 
        test_unwrap.wrap(nil)
        expect{test_unwrap.unwrap}.to raise_error "No contents have been wrapped." 
    end
end