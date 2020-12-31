# 文字列を分割して配列に格納
input = gets.chomp.chars

result = input.each_slice(2).map(&:first).join

puts result
