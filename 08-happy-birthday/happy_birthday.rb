require 'date'

class HappyBirthday

  def ask
  questions = ["What year were you born?",
      "What month were you born?",
      "What day were you born?"]

    birthday = questions.inject("") do |response, q|
      puts q
      input = gets.chomp.capitalize
      response = "#{response} #{input}"
    end

    puts Date.parse birthday
    spank Date.parse birthday
  end

  def spank birthday
   age = Date.today.year - birthday.year
   age-= 1 unless birthday_passed_this_year? birthday

   puts "You're #{age}. You get #{age} spanks!"
   age.times{puts "SPANK!"}
  end

  def birthday_passed_this_year? birthday
    today = Date.today
    birthday.month >= today.month && birthday.day >= today.day

  end

end

HappyBirthday.new.ask
