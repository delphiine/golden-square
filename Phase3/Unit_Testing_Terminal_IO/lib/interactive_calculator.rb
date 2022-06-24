class InteractiveCalculator
    def initialize(io)
        @io = io
    end

    def calculate
        @io.puts "Enter a number: "
        num_1 = @io.gets.to_i
        @io.puts "Enter another number: "
        num_2 = @io.gets.to_i 
        @io.puts num_1 + num_2
    end

end