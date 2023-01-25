h,w = gets.split(" ").map(&:to_i)
ary = h.times.map{gets.split.map(&:to_s)}

count = 0

ary.each_with_index do |numbers, h_i|
  numbers.each_with_index do |num, t_i|
    count += 1
    next if num == '#'

    around = []

    up = []
    if h_i > 0
      up.push(ary.dig(h_i - 1, count - w - 1)) if count > 0
      up.push(ary.dig(h_i - 1, count - w + 1), ary.dig(h_i - 1, count - w))
    end

    down = [
      ary.dig(h_i + 1, count - w - 1),
      ary.dig(h_i + 1, count - w + 1),
      ary.dig(h_i + 1, count - w),
    ]

    left = numbers.dig(t_i - 1)
    right = numbers.dig(t_i + 1)

    around.push(left,right).concat(up).concat(down)

    ary[h_i][t_i] = around.count('#')
  end
end

ary.each {|a| puts a}
