def check_string(string_to_check)
    string_arr = string_to_check.split(" ")
    if string_arr.include?("#TODO")
        return true
    else
        return false
    end
end