class Robot
  attr_accessor :name
  def initialize

    @name = make_name
  end


  def reset
    self.name = make_name
  end

  def make_name

    name = ''
    2.times {name += ('A'..'Z').to_a.sample}
    3.times {name += ('0'..'9').to_a.sample}
    return name
  end
end


puts "Robot 1: "
robot1 = Robot.new
puts robot1.name
puts robot1.name
puts robot1.name

puts "Robot 2: "
robot2 = Robot.new
puts robot2.name
puts robot2.name
puts robot2.name

puts "Robot 3: "
robot3 = Robot.new
puts robot3.name
puts robot3.name
puts "Resetting to factory settings."
robot3.reset
puts robot3.name
puts robot3.name
