require 'todo_list'
require 'todo'

RSpec.describe TodoList do
    context "returns incomplete tasks" do
        it "returns the incomplete tasks when only 1 task given" do
            todo_list = TodoList.new
            task = Todo.new("Coding")
            todo_list.add(task)
            result = todo_list.incomplete
            expect(result).to eq [task]
        end

        it "returns the incomplete tasks when multiple tasks given" do
            todo_list = TodoList.new
            task1 = Todo.new("Coding")
            task2 = Todo.new("Baking")
            task3 = Todo.new("Nothing")
            task4 = Todo.new("Running")
            task1.mark_done!
            task2.mark_done!
            todo_list.add(task1)
            todo_list.add(task2)
            todo_list.add(task3)
            todo_list.add(task4)
            result = todo_list.incomplete
            expect(result).to eq [task3, task4]
        end
    end

    context "returns completed tasks" do
        it "returns the [] when the todo list is empty" do
            todo_list = TodoList.new
            result = todo_list.complete
            expect(result).to eq []
        end
        it "returns the completed tasks when only 1 item is given" do
            todo_list = TodoList.new
            task = Todo.new("Coding")
            task.mark_done!
            todo_list.add(task)
            result = todo_list.complete
            expect(result).to eq [task]
        end

        it "returns the completed tasks when multiply tasks are given" do
            todo_list = TodoList.new
            task1 = Todo.new("Coding")
            task2 = Todo.new("Baking")
            task3 = Todo.new("Nothing")
            task4 = Todo.new("Running")
            task1.mark_done!
            task2.mark_done!
            todo_list.add(task1)
            todo_list.add(task2)
            todo_list.add(task3)
            todo_list.add(task4)
            result = todo_list.complete
            expect(result).to eq [task1, task2]
        end 
    end
    it "marks all todos as complete where 1 incomplete task is given" do
        todo_list = TodoList.new
        task = Todo.new("Coding")
        todo_list.add(task)
        result = todo_list.give_up!
        expect(result).to eq [task]
    end
    it "marks all todos as complete" do
        todo_list = TodoList.new
        task1 = Todo.new("Coding")
        task2 = Todo.new("Baking")
        task3 = Todo.new("Nothing")
        task4 = Todo.new("Running")
        task1.mark_done!
        task2.mark_done!
        todo_list.add(task1)
        todo_list.add(task2)
        todo_list.add(task3)
        todo_list.add(task4)
        result = todo_list.give_up!
        expect(result).to eq [task1, task2, task3, task4]
    end
end