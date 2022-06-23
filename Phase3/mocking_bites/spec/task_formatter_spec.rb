require 'task_formatter'

RSpec.describe TaskFormatter do
    context "Returns task" do
        it "Returns task as a string" do
            fake_task = double(:fake_task, to_s: "Do dishes")
            task_formatter = TaskFormatter.new(fake_task)
            expect(task_formatter.format_task_to_string).to eq "Do dishes"
        end

        it "Returns ' - [ ] Task title' if the task is not complete" do
            fake_task = double(:fake_task, to_s: "Do dishes")
            task_formatter = TaskFormatter.new(fake_task)
            expect(task_formatter.format_incomplete).to eq "- [ ] Do dishes"
        end

        it "Returns ' - [x] Task title' if the task is not complete" do
            fake_task = double(:fake_task, to_s: "Do dishes")
            task_formatter = TaskFormatter.new(fake_task)
            expect(task_formatter.format_complete).to eq "- [x] Do dishes"
        end
    end
end 
