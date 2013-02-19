class Bob
<<<<<<< HEAD
  def run

    loop do
      line = gets.chomp.strip
      puts respond_to line

    end

  end

  def respond_to line
    if question? line
      'Sure'
    elsif yelling? line
      'Woah, chill out!'
    elsif something? line
       'Whatever.'
    else
      'Fine. Be that way!'
    end

  end

  def question? line
    line.end_with? '?'
  end

  def yelling? line
    line == line.upcase
  end

  def something? line
    line.length > 0
  end
end

Bob.new.run
  def chat(input)
    puts response_for(input)
  end

  def response_for(input)
    if shouting?(input)
      'Woah, chill out!'
    elsif question?(input)
      'Sure.'
    elsif statement?(input)
      'Whatever.'
    else
      'Fine, be that way.'
    end
  end

  def statement?(input)
    input.length > 0
  end

  def question?(input)
    input.end_with?("?")
  end

  def shouting?(input)
    !input.empty? && input == input.upcase
  end
end

puts "Hey bro, wassup?"
bob = Bob.new
while true
  input = gets.chomp.strip
  bob.chat(input)
end
