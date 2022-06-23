class TaskFormatter
    def initialize(task) # task is an instance of Task
      @task = task
    end
  
    def format_task_to_string # Returns the task formatted as a string.
      return @task.to_s
    end

    def format_incomplete
      return "- [ ] #{@task}"
    end

    def format_complete
      return "- [x] #{@task}"
    end
  end