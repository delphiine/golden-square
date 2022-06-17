=begin
1. Describe the Problem
User wants to check if a text is grammatically correct. The user also wants to be able to see, in percentage, 
the amount of text that has passed the grammar review.

2. Design the Method Signature
The name of the class is 'GrammarStats'. It has three methods: 'initialise', 'check' and 'percentage_good'.
- The 'initialise' method doesn't return anything, but it initialises the accumulators for tracking the total number
of times the check method is called and the number of passed grammar checks.
- The 'check' method returns a boolean
- The 'percentage_good' method returns an integer 

3. Create Examples as Tests

check test examples:
"Hello, world" => false
"Hello, word!" => true

percentage_good test examples:
"Hello, world!" "Hello, world!" Hello, world!" "Hello, world" => 75
"Hello, world!" "Hello, world" => 50
"hello, world!" "Hello, world"  => 0
=end

require 'GrammarStats'

RSpec.describe GrammarStats do
    it "Returns true when the text begins with a capital letter and ends with correct punctuation" do
        text = GrammarStats.new
        results = text.check("Hello, word!")
        expect(results).to eq true
    end
    it "Returns true when the text begins with a capital" do
        text = GrammarStats.new
        results = text.check("Hello, world")
        expect(results).to eq false
    end
    context "Returns the percentage of texts checked so far that passed" do
        it "Returns 55 when 11 out of 20 checks passes" do
            grammar_stats = GrammarStats.new
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world")
            grammar_stats.check("hello, world")
            grammar_stats.check("hello, world")
            grammar_stats.check("hello, world")
            grammar_stats.check("hello, world")
            grammar_stats.check("hello, world!")
            grammar_stats.check("hello, world!")
            grammar_stats.check("hello, world!")
            grammar_stats.check("hello, world!")
            expect(grammar_stats.percentage_good).to eq 55
        end
        it 'Returns 100 when all checks passes' do
            grammar_stats = GrammarStats.new
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            grammar_stats.check("Hello, world!")
            expect(grammar_stats.percentage_good).to eq 100
        end
        it 'Returns 0 when no checks passes' do
            grammar_stats = GrammarStats.new
            grammar_stats.check("Hello, world")
            grammar_stats.check("hello, world")
            grammar_stats.check("hello, world!")
            expect(grammar_stats.percentage_good).to eq 0
        end
    end
end