# n回分入力値を受け取り
n = gets.to_i
# n回分、時間と場所を受け取り
numbers = n.times.map { |i| gets.split(" ").map(&:to_i) }

# 初めの時間と場所
t1, x1, y1 = 0, 0, 0

numbers.each do |n|
  # 新しい時間と場所を格納する
  t2 = n[0]
  x2 = n[1]
  y2 = n[2]

  # 時間の差分を取得→移動できる数
  diff_t = t2 - t1
  # 移動に必要な数を取得
  diff_xy = (x2 - x1).abs + (y2 - y1).abs

  # 以下条件の場合は実行可能
  # ・「移動に必要な数」が「移動できる数」以下の場合
  # ・「移動に必要な数」-「移動できる数」が偶数の場合（戻れるため）
  if diff_xy <= diff_t && (diff_xy - diff_t).even?
    t1, x1, y1 = t2, x2, y2
  else
    return puts "No"
  end
end

puts "Yes"
