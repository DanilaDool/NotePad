require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts 'Что надо сделать?'
    @text = STDIN.gets.chomp

    puts 'К какому числу? Укажите дату в формате дд.мм.гггг, например 26.02.2008'
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at}"

    deadline = "Крайний срок: #{@due_date.strftime('%Y.%m.%d')}"

    return [deadline, @text, time_string]
  end
end
