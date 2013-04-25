class Allergies

  attr_reader :score

  def initialize b

    @score = b

  end


  def list
    current_list = []

    allergens.each_index do |index|
      if score & (2 ** index) > 0
        current_list << allergens[index]
      end
    end

    current_list

  end

  def allergens
    %w[eggs peanuts shellfish strawberries tomatoes chocolate pollen cats]
  end

end
