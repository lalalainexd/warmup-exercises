class Age
  attr_reader :seconds

  def initialize seconds
    @seconds = seconds
  end

  def earth
    seconds/31557600
  end

  def mercury
    earth/0.2408467
  end

  def venus
    earth/0.61519726
  end

  def mars
    earth/1.8808158
  end

  def jupiter
    earth/11.862615
  end

  def saturn
    earth/29.447498
  end

  def uranus
    earth/84.016846
  end

  def neptune
    earth/164.79132
  end
end

puts Age.new.earth 1031 * 10**6
