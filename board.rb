module BoardTable
    def board_table(rows)
        rows_slice = rows.each_slice(3)
        total_rows = rows.length

        rows_slice.each_with_index do |row, index|
            puts row.join(" | ")
            puts "-" * 9 unless index == total_rows - 7
        end
    end
end