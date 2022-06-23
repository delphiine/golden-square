require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  context "returns add task list items" do
    it "Returns one task" do
      task_list = TaskList.new
      task = double(:fake_task)
      task_list.add(task)
      expect(task_list.all).to eq [task]
    end

    it "Returns multiple tasks" do
      task_list = TaskList.new
      task_1 = double(:fake_task)
      task_2 = double(:fake_task)
      task_list.add(task_1)
      task_list.add(task_2)
      expect(task_list.all).to eq [task_1, task_2]
    end

  end 

  it "Returns true when tasks have been marked as completed" do
    task_list = TaskList.new
    task = double(:fake_task, mark_complete: nil, complete?: true)
    task_list.add(task)
    task.mark_complete
    expect(task_list.all_complete?).to eq true
  end

  it "Returns false if at least one task is yet to be marked 'complete'" do
    task_list = TaskList.new
    task_1 = double(:fake_task, mark_complete: nil, complete?: true)
    task_2 = double(:fake_task, mark_complete: nil, complete?: false)
    task_list.add(task_1)
    task_list.add(task_2)
    task_1.mark_complete
    task_2.mark_complete
    expect(task_list.all_complete?).to eq false
  end
end
