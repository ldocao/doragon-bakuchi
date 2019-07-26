require 'set'

module DoragonBakuchi
  class Game
    def result(dices)
      unique_values = dices.to_set
      if unique_values.size == 1 #doragon en
        sum_values = dices.inject(:+)
        if sum_values%2 == 0
          points = sum_values+1
        else
          points = sum_values
        end
        message = "Doragon-en ! Vous remportez #{points} points"
      elsif unique_values.size == 2 #sakana
        points = 1
        message = "Sakana ! Vous remportez #{points} point"
      elsif unique_values.size == 3 #tokage
        message = "Tokage... Vous perdez 5 points"
        points = -5
      end

      results = "[#{dices.sort.join}] #{message}"
      return results
    end
  end
end
