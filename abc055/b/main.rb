n = gets.chomp.to_i
divisor = 10 ** 9 + 7
result = 1
# 最後に余りを取るとタイムオーバーになるため、計算の途中過程であまりを取る
(1..n).each { |i| result = i * result % divisor }
puts result
