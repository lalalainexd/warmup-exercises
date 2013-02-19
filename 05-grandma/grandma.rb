class Grandma
  def chat
    puts speak_up
    loop do
      parse(gets.chomp)
    end
  end

  def parse input
    puts shouting?(input) ? yell_back : speak_up
  end

  def shouting? input
    input == input.upcase
  end

  def yell_back
    "NO, NOT SINCE #{random_year}!"
  end

  def random_year
    [1930..1950].sample
  end

  def speak_up
    'HUH?!  SPEAK UP, SONNY!'
  end

end

granny = Grandma.new
granny.chat

