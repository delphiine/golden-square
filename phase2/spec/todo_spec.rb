require 'todo'

RSpec.describe Todo do
    it "returns the task as a string" do
        new_task = Todo.new("Coding")
        result = new_task.task
        expect(result).to eq "Coding"
    end

    it "returns true if the test is done" do
        new_task = Todo.new("Coding")
        new_task.mark_done!
        result = new_task.done?
        expect(result).to eq true
    end

    it "returns false if the test is not done" do
        new_task = Todo.new("Coding")
        result = new_task.done?
        expect(result).to eq false
    end

    it "returns true if the test is done otherwise false" do
        todo1 = Todo.new("Coding")
        todo2 = Todo.new("Baking")
        todo3 = Todo.new("Running")
        todo1.mark_done!
        todo3.mark_done!
        expect(todo1.done?).to eq true
        expect(todo2.done?).to eq false
        expect(todo3.done?).to eq true
    end
end