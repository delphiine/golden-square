class StringRepeater
    def initialize(io)
        @io = io
    end

    def repeater
        @io.puts "Please enter a word: "
        word = @io.gets.chomp
        @io.puts "Please enter the number of times to repeat the word: "
        times = @io.gets.to_i
        @io.puts "#{word} " * times
    end
end