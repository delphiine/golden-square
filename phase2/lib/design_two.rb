def grammar_checker(to_check)
    alphabet = ('A'..'Z').to_a 
    if alphabet.include?(to_check[0]) && to_check[-1] == "."
        return "Your grammar is correct"
    elsif 

end