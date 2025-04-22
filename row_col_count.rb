def row_col_count(data)
  
    sum_row = [0,0,0,0]
    
    # 行のループ
    4.times do |cnt|

        col_work = ""
        sum_col  = 0

        # 列のループ
        data[cnt].each_with_index do |col, idx|
          
          col_work << " #{col.to_s.rjust(3)}|"
          sum_col = sum_col + col.to_i

          sum_row[idx] = sum_row[idx] + col.to_i
        end

        # 行＋行の総合計
        puts "#{col_work} #{sum_col.to_s.rjust(3)}"
    end

    col_sum = ""
    sum_sum = 0

    # 行の合計
    sum_row.each do |sum|
      col_sum << " #{sum.to_s.rjust(3)}|"
      sum_sum = sum_sum + sum.to_i
    end

    # 行の総合計
    puts "-" * 25
    puts "#{col_sum} #{sum_sum.to_s.rjust(3)}"
end

input = [[9, 85, 92, 20],
         [68, 25, 80, 55],
         [43, 96, 71, 73],
         [43, 19, 20, 87],
         [95, 66, 73, 62]]
          
row_col_count(input)
