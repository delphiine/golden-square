class TodoList
    def initialize
        @todo_list = []
    end
  
    def add(todo) # adds tasks to to a todo list
        @todo_list << todo
    end
  
    def incomplete # Returns all non-done TODOs in an array
      incomplete_arr = []
      @todo_list.each do |task|
        incomplete_arr << task if task.done? == false
      end
      return incomplete_arr
    end
  
    def complete # Returns all complete TODOs as an array
      complete_arr = []
      @todo_list.each do |task|
        complete_arr << task if task.done? == true
      end
      return complete_arr
    end
  
    def give_up! # Marks all tasks as done, and then returns an updated list of TODOs
        @todo_list.map do |task|
            task.mark_done!
        end
        @todo_list
    end
  end
  
  