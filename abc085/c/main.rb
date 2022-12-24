n,total = gets.chomp.split(" ").map(&:to_i)

result = 0

## 全検索
(0..n).each do |x|
  (0..n - x).each do |y|
    if 10000 * x + 5000 * y + 1000 * (n - x - y) == total
      # yのblockを抜ける
      break result = "#{x} #{y} #{n - x - y}"
    end
  end
  # xのblockを抜ける
  break if result != 0
end

if result == 0
  puts "-1 -1 -1"
else
  puts result
end
