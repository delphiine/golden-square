def grammar_checker(to_check)
    fail "Not a sentence." if to_check.empty?

    alphabet = ('A'..'Z').to_a 
    if alphabet.include?(to_check[0]) && to_check[-1] == "."
        return "Your grammar is correct"
    elsif !alphabet.include?(to_check[0]) && to_check[-1] == "."
        return "Remember to capitalize your sentence"
    elsif alphabet.include?(to_check[0]) && to_check[-1] != "."
        return "Please review your punctuation"
   end
end
