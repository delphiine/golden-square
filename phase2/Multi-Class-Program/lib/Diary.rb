class Diary
    def initialize
        @entries = []
        @todos = []
        @phone_numbers = []
    end

    def add_entry(entry)
        @entries << entry
    end

    def add_todo(todo)
        @todos << todo
    end

    def add_phone_number(phone_number)
        numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        new_number = ""

        @entries.each do |word|
            if (word.length == 9) && (word[0] == 0)
                word.each do |n| 
                    if numbers.include?(n)
                        new_number += n
                    end
                end
            end
        end

        if new_number.length == 9
            @phone_numbers << new_number
        end

        # @entries.each do |string| ["hello people", "hi, my number is 012345678"]
        #     string.split(" ").each do |word|
        #         if @content.scan(/0[0-9]{9}/).is_true?
        #             @phone_numbers << number
        #         end
        #     end
        # end
    end

    def all_entries
        return @entries
    end

    def all_todos
        return @todos
    end

    def all_phone_numbers
        return @phone_numbers
    end

end

# phone = Diary.new
# phone.add_phone_number("hi, my number is 012345678")
# puts phone.all_phone_numbers