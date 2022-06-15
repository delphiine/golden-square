def make_snippet(entry)
    entry = entry.split(" ")
    count = 0
    output_list = []
    while count <= 4
        output_list << entry[count]
        count += 1
    end
   output = output_list.join(" ") + " ..."
end