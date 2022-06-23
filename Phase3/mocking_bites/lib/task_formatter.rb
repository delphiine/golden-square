class TaskFormatter
    def initialize(task) # task is an instance of Task
      @task = task
    end
  
    def format # Returns the task formatted as a string.
       if @task.complete? == true
        return "- [ ] #{@task}"
       end
       return "- [x] #{@task}"
    end
  end