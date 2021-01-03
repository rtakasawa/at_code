n,k = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i).sort.reverse
result = l.max(k).sum
puts result
