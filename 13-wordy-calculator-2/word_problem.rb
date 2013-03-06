class WordProblem
  attr_reader :problem, :answer

  def initialize(question)
    @problem = question
  end

  def answer
    @answer ||= calculate
  end

  def calculate
    numbers.inject(operation.to_sym)
  end

  def numbers
    problem.scan(allowed_numbers).collect{|match| match.to_i}
  end

  def operation
    word_op = problem.split[3]
    Operation.new word_op
  end

  def allowed_numbers
    %r{-?\d+}
  end
end

class Operation
  attr_reader :op

  def initialize(op)
    operations.include?(op) && (@op = op) || (raise ArgumentError)
  end

  def to_sym
    operations[op]
  end

  def operations
    {
      "plus" => :+,
      "minus" => :-,
      "multiplied" => :*,
      "divided" => :/
    }
  end
end
