class Robot
  def name
    @name ||= RobotNamer.generate
  end


  def reset
    @name = nill
  end

end

module RobotNamer
  def self.generate

    "#{('A'..'Z').to_a.sample(2).join}#{rand(100..999)}"
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
