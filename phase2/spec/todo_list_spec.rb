require 'todo_list'

describe TodoList do
  describe "incomplete" do
    it 'returns all incomplete tasks' do
      todo_list = TodoList.new
      incomplete_task = double("incomplete_task", :done? => false, :task => "Coding")
      incomplete_task_2 = double("incomplete_task_2", :done? => false, :task => "Baking")
      complete_task = double("complete_task", :done? => true, :task => "Running")
      complete_task_2 = double("complete_task_2", :done? => true, :task => "Cleaning")
      todo_list.add(incomplete_task)
      todo_list.add(incomplete_task_2)
      todo_list.add(complete_task)
      todo_list.add(complete_task_2)
      expect(todo_list.incomplete).to eq [incomplete_task, incomplete_task_2]
    end
  end

  describe "complete" do
    it "returns the completed todos" do
      todo_list = TodoList.new
      incomplete_task = double("incomplete_task", :done? => false, :task => "Coding")
      incomplete_task_2 = double("incomplete_task_1", :done? => false, :task => "Baking")
      complete_task = double("complete_task", :done? => true, :task => "Running")
      complete_task_2 = double("complete_task_2", :done? => true, :task => "Cleaning")
      todo_list.add(incomplete_task)
      todo_list.add(incomplete_task_2)
      todo_list.add(complete_task)
      todo_list.add(complete_task_2)
      expect(todo_list.complete).to eq [complete_task, complete_task_2]
    end
  end
end