require 'highline/import'

class PsychologyTest


  def questions
   [ "What do you love?",
    "How are you today?",
    "Do you want candy?",
    "How old are you?",
    "Did you sleep well?"
   ]

  end

  def self.acceptable_answers
    ["money",
    "candy",
    "singing"]

  end

  def acceptable? response
    acceptable_answers.include? response.downcase.strip

  end

  def important_question
    0
  end

  def ask_question
   ask questions.sample
  end

  def run

    response = ask_question
    while not acceptable? response
      resonse = ask_question
    end

  end

end

PsychologyTest.new.run

