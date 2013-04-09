class Calculator

  def ask question
    solve question
  end

  def solve question
    addends(question).inject(:+)
  end

  def addends question
    #question.split.collect{|value| value.to_i}
    regex = %r{-?\d+}
    question.scan(regex).collect{|match| match.to_i}

  end

end
