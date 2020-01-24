class Task
  attr_reader :desc, :done

  def initialize(desc)
    @desc = desc
    @done = false
  end

  def mark_as_done!
    @done = true
  end

end
