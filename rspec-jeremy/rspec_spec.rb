require 'rspec'
require_relative 'rspec'
# Challenge: Tasklist with TDD
# For each story:
# Copy the story into your RSpec file as a comment
# Write the test(s) that class/method tests must pass
# Then run the test(s) and see that they fail
# Then implement the class/method, with comments, so that it passes the tests one at a time
# User Stories
# Story: As a developer, I can create a Task.
describe Task do
  it 'There is a task' do
    expect { Task.new }.to_not raise_error
  end
  # Story: As a developer, I can give a Task a title and retrieve it.
  it 'it can have a title' do
    new_task = Task.new
    new_task.title = 'get some sleep'
    expect(new_task.title).to be_a String
    expect(new_task.title).to eq 'get some sleep'
  end
  # Story: As a developer, I can give a Task a description and retrieve it.
  it 'can be given a description' do
    new_task = Task.new
    new_task.description = 'I need to make sure I go to be by 12am this time.'
    expect(new_task.description).to be_a String
    expect(new_task.description).to eq 'I need to make sure I go to be by 12am this time.'
  end

  # Story: As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
  it 'it starts as "in progress"' do
    new_task = Task.new
    expect(new_task.progress).to be_a String
    expect(new_task.progress).to eq 'in progress'
  end

  # Story: As a developer, when I print a Task that is done, its status is shown.
  it 'it can be marked as "done"' do
    new_task = Task.new
    new_task.mark_done
    expect(new_task.progress).to be_a String
    expect(new_task.progress).to eq 'complete'
  end
end

#==========================================================
# Story: As a developer, I can add all of my Tasks to a TaskList.
describe 'TaskList' do
  it 'has to be real' do
    expect { TaskList.new }.to_not raise_error
  end
  it 'can hold tasks' do
    list = TaskList.new
    new_task = Task.new
    list.to_do << new_task
    expect(list.to_do).to be_an Array
    expect(list.to_do.length).to eq 1
  end

  # Story: As a developer with a TaskList, I can print the completed items.
  it 'can print completed items' do
    list = TaskList.new
    task1 = Task.new
    task2 = Task.new
    task3 = Task.new
    task4 = Task.new
    task1.mark_done
    task1.title = 'Finish this Challenge'
    task2.mark_done
    task2.title = 'Fix this Code!'
    list.to_do << task1
    list.to_do << task2
    expect(list.to_do.length).to eq 2
    expect(list.show_complete).to eq ['Finish this Challenge', 'Fix this Code!']
  end

  # Story: As a developer with a TaskList, I can print the incomplete items.
  it 'can print incomplete items' do
    list = TaskList.new
    task1 = Task.new
    task2 = Task.new
    task3 = Task.new
    task4 = Task.new
    task1.mark_done
    task1.title = 'Finish this Challenge'
    task3.title = 'Have this interview'
    task4.title = 'Get a career in coding'
    task2.mark_done
    task2.title = 'Fix this Code!'
    list.to_do << task1
    list.to_do << task2
    list.to_do << task3
    list.to_do << task4
    expect(list.to_do.length).to eq 4
    expect(list.show_incomplete).to eq ['Have this interview', 'Get a career in coding']
  end
end
# Stretch: Due Date
# Story: As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.
describe 'Due Date' do
  it 'the class is imported' do
    expect { Date.new }.to_not raise_error
  end

  it 'can have a date created' do
    date = Date.new(2022, 6, 19)
    expect("#{date.mon}-#{date.mday}-#{date.year}").to eq '6-19-2022'
  end

  it 'can add a date to Task' do
    date = Date.new(2022, 6, 19)
    task = Task.new
    task.deadline(date)
    expect(task.due_date.to_s).to eq '2022-06-19'
  end

  # Story: As a developer with a TaskList, I can list all the not completed items that are due today.
  it 'Tasklist can list all the not completed items that are due today' do
    # creates tasks and task list
    list = TaskList.new
    task1 = Task.new
    task2 = Task.new
    task3 = Task.new
    task4 = Task.new

    # marks as complete
    task1.mark_done
    task2.mark_done

    # sets the title of task
    task1.title = 'Finish this Challenge'
    task2.title = 'Have this interview'
    task3.title = 'Get a career in coding'
    task4.title = 'Fix this Code!'

    # sets due dates for tasks
    date1 = Date.new(2022, 5, 19)
    task1.deadline(date1)
    date2 = Date.new(2022, 8, 20)
    task2.deadline(date2)
    date3 = Date.new(2022, 5, 19)
    task3.deadline(date3)
    date4 = Date.new(2022, 5, 19)
    task4.deadline(date4)

    # puts tasks into tasklist
    list.to_do << task1
    list.to_do << task2
    list.to_do << task3
    list.to_do << task4

    expect(task2.title).to eq 'Have this interview'
    expect(list.due_today).to eq ['Get a career in coding', 'Fix this Code!']
  end
  # Story: As a developer with a TaskList, I can list all the not completed items in order of due date.

  # Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
end
