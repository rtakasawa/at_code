input = gets.chomp.to_i
result = 0
(1..input).each do |i|
  result += i
end
puts result