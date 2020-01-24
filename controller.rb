require_relative "view"
require_relative "task"
require_relative "task_repository"

class Controller

  def initialize
    @view = View.new
    @repo = TaskRepository.new()
  end

  def create_task
    # 1. ask user what is the desc
    desc = @view.ask_user_for_desc
    # 2. create a Task with the given desc
    task = Task.new(desc)
    # 3. store it in the repo
    @repo.add_task(task)
  end

  def show_all_tasks
    # 1. get all tasks from repo
    tasks = @repo.all
    # 2. send tasks to view
    @view.show_tasks(tasks)
  end

  def mark_task_as_done
    # 0. show all tasks
    show_all_tasks
    # 1. ask user which task he/she did
    ind = @view.ask_user_for_index
    # 2. get task from repo
    task = @repo.find(ind)
    # 3. mark task as done
    task.mark_as_done!
  end

end
