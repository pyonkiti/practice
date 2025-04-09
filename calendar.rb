require "date"

def calendar(date)
    
    head = "Su  Mo  Tu  We  Th  Fr  Sa  "

    # タイトル
    puts "#{date.split('-')[0]}年#{date.split('-')[1]}月".center(head.length - 2)

    # ヘッダー
    puts head

    # 1日の曜日
    str_day = Date.parse("#{date}-01").wday

    # 月末日
    end_day = Date.new(date.split('-')[0].to_i, date.split('-')[1].to_i, -1).day

    week = ""
    str_space = " " * (str_day.to_i * 4)
    
    for cnt in (1..end_day.to_i) do
        
        week << str_space + cnt.to_s.rjust(2) + "  "
        str_space = "" if cnt == 1

        if week.length == head.length
            puts week
            week = ""
        end
    end
    puts week
end

calendar("2025-04")
