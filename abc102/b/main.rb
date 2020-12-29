n = gets.chomp.to_i
a_list = []
a_list = gets.chomp.split(" ").map(&:to_i)
result = a_list.max - a_list.min
puts result
