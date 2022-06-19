class TaskManager
    def initialize
        @todo_list = []
        @task_num = 1
    end 
    # Numbers items and adds them to an instance of the 'todo_list' array.
    def add(item)
        if item != (" ")
            @todo_list << "#{@task_num}. #{item}"
            @task_num += 1
        end
    end
    # Takes a number as string and removes the item listed along that number on the todo list.
    def remove(item_num)
        @todo_list.each_with_index do |todo, index|
            if todo[0].include?(item_num)
                @todo_list.delete_at(index)
            end
        end
    end
    # Prints all the items of a list on separate lines. Raises error if the list is empty
    def print_list
        if @todo_list.empty?
            fail "Your list is empty"
        end
        return @todo_list.join("\n")
    end 
end 