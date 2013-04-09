require 'date'

class Gigasecond

  def self.gigaseconds_old birthday
   birthtime = DateTime.parse(birthday)

   puts (birthtime.to_time + (10**9)).to_datetime

  end
end

Gigasecond.gigaseconds_old 'September 6, 1989, 2:00am UTC'
