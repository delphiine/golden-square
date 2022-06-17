class GrammarStats
    def initialize
        @check_passed_num = 0
        @total_check_num = 0
    end
  
    def check(text) 
        punctuation_marks = ["!", ".", "?"]
        @total_check_num += 1

        if (text[0] == text[0].upcase) && punctuation_marks.include?(text[-1])
            @check_passed_num += 1
            return true 
        end
        return false
    end
  
    def percentage_good
        if @total_check_num > 0
            return (@check_passed_num * 100)/ @total_check_num
        end
        return 0
    end
end

