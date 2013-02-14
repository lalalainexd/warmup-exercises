class Beer

    def self.song

        99.downto(1)  do |beer_count|

            if beer_count > 1
            puts "#{beer_count} bottles of beer on the wall, #{beer_count} bottles of beer."
            puts "Take one down and pass it around, #{beer_count-1} bottles of beer on the wall."
            puts ""
            elsif beer_count == 2
            puts "#{beer_count} bottles of beer on the wall, #{beer_count} bottles of beer."
            puts "Take one down and pass it around, #{beer_count-1} bottle of beer on the wall."
            puts ""
            else
                puts "1 bottle of beer on the wall, 1 bottle of beer."
                puts "Take it down and pass it around, no more bottles of beer on the wall."
                puts ""
            end

        end

        puts "No more bottles of beer on the wall, No more bottles of beer."
        puts "Go to the store and buy some more, 99 bottles of beer on the wall."
    end


end

class Fixnum
    def bottles_of_beer
        self.times do |beer_count|

        end
    end
end


