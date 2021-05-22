n = gets.to_i
result = 0
n.times do |i|
  sheet = gets.split(' ').map(&:to_i)
  diff = sheet[1] + 1 - sheet[0]
  result += diff
end

puts result
