module Checking_for_winner
    WINNER_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
    [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

    def checking_winner(rows)
      puts ""
      rows.each_slice(3) do |slice|
        slice.inspect
      end
    end
end