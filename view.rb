# puts / gets

class View

  def ask_user_for_desc
    puts "What is the description of your task?"
    gets.chomp
  end

  def ask_user_for_index
    puts "What is the index of the task you completed?"
    gets.chomp.to_i - 1
  end

  def show_tasks(tasks)
    tasks.each_with_index do |task, ind|
      x = task.done ? 'x' : ' '
      puts "#{ind + 1} - [#{x}] #{task.desc}"
    end
  end

end
