require './board.rb'
require './players.rb'

class Game    
    # include BoardTable
    include PlayTurns
    # include PlayTurns
    
    def initialize
        playing
    end

    def playing
        rows = (1..9).to_a
        turns(rows)
    end
end

tictactoe = Game.new