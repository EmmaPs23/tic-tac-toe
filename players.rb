require './board.rb'
require './checking_for_winner.rb'

module AskingTurns
    def calling_turns(counter)
        if counter % 2 != 0
            @current_player = "X"
            puts "It's #{@current_player}'s turn. Choose a valid number."
        elsif counter % 2 == 0
            @current_player = "O"
            puts "It's #{@current_player}'s turn. Choose a valid number."
        end
    end
end

module PlayTurns
    include BoardTable
    include AskingTurns
    include Checking_for_winner

    @current_player = nil

    def turns(rows)
        counter = 1

        loop do
            puts ""

            calling_turns(counter)

            board_table(rows)

            input_number = gets.to_i

            if rows.include?(input_number) 
                
                rows.map! do |number|
                    if number == input_number  
                        number = @current_player 
                    else 
                        number
                    end
                end

            elsif !rows.include?(input_number)
                counter -= 1
            end

            checking_winner(rows)

            counter += 1
            break if counter == 2
        end
    end
end