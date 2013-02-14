class Bob
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
