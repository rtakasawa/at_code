h,_w = gets.split(" ").map(&:to_i)
ary = h.times.map{gets.chomp.split('').map(&:to_s)}

result = []

ary.each_with_index do |strings, h_i|
  row_result = []

  strings.each_with_index do |str, t_i|
    next row_result.push(str) if str == '#'

    # 周りの文字列を入れる
    around = []

    # 上段
    up = []
    if h_i > 0
      up.push(ary.dig(h_i - 1, t_i - 1)) if t_i > 0
      up.push(ary.dig(h_i - 1, t_i), ary.dig(h_i - 1, t_i + 1))
    end

    # 下段
    down = []
    down.push(ary.dig(h_i + 1, t_i - 1)) if t_i > 0
    down.push(ary.dig(h_i + 1, t_i), ary.dig(h_i + 1, t_i + 1))

    # 左右
    left = strings.dig(t_i - 1) if t_i > 0
    right = strings.dig(t_i + 1)

    # 周りの文字をまとめる
    around.push(left,right).concat(up).concat(down)

    # [#]の数を数える
    row_result.push(around.count('#'))
  end

  # 行ごとに結果に入れる
  result.push(row_result)
end

result.each {|row| puts row.join}
