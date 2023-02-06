h,_w = gets.split(" ").map(&:to_i)
ary = h.times.map{gets.chomp.split('').map(&:to_s)}

ary.each_with_index do |strings, h_i|
  strings.each_with_index do |str, t_i|
    next if str != '#'

    # 上下左右の文字列を入れる
    around = []

    # 上
    up = []
    up.push(ary.dig(h_i - 1, t_i)) if h_i > 0

    # 下段
    down = []
    down.push(ary.dig(h_i + 1, t_i))

    # 左右
    left = strings.dig(t_i - 1) if t_i > 0
    right = strings.dig(t_i + 1)

    # 上下左右の文字列をまとめる
    around.push(left,right).concat(up).concat(down)

    # 上下左右に[#]がない場合
    return puts "No" if !around.include?('#')
  end
end

puts "Yes"
