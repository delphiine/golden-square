def get_most_common_letter(text)
    counter = Hash.new(0)
    text.chars.each do |char|
        next if char.match?(/\W/)
        counter[char] += 1
    end
    counter.sort_by { |k, v| v }.to_a[-1][0]
end