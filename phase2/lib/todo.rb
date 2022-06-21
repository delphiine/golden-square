class Todo
    def initialize(task) # task is a string
      @task = task
      @done_tasks = false
    end
  
    def task
        @task.to_s
      # Returns the task as a string
    end
  
    def mark_done!
        @done_tasks = true
      # Marks the todo as done
      # Returns nothing
    end
  
    def done?
      return @done_tasks
      # Returns true if the task is done
      # Otherwise, false
    end
  end
  