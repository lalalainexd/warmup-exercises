class WordProblem
  attr_reader :problem, :answer

  def initialize(question)
    @problem = question
  end

  def answer
    @answer ||= calculate
  end

  def calculate
    operation.execute(numbers)
  end

  def numbers
    problem.scan(allowed_numbers).collect{|match| match.to_i}
  end

  def operation
    word_op = problem.split[3]
    actions[word_op]
  end

  def actions
    hash = { "plus" => MathAction.addition,
            "minus" => MathAction.subtraction,
            #"cubed" => PowerAction.cubed }
            "multiplied" => MathAction.multiplication,
            "divided" => MathAction.division}
    hash.default = UnknownAction.new

    return hash
  end

  def allowed_numbers
    %r{-?\d+}
  end
end

#class PowerAction
#  attr_reader :pow

#  def initialize(pow)
#    @pow = pow
#  end

#  def execute(numbers)
#    numbers.first.to_i ** pow
#  end
#end

class MathAction

  def self.addition
    new(:+)
  end

  def self.subtraction
    new(:-)
  end

  def self.multiplication
    new(:*)
  end

  def self.division
    new(:/)
  end

  attr_reader :operation

  def initialize(operation)
    @operation = operation
  end

  def execute(numbers)
    numbers.inject(operation)
  end
end

class UnknownAction

  def execute(*params)
    raise ArgumentError
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
