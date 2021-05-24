input = gets.split(" ").map(&:to_i)

# itself selfを返す
# a.group_by{|i|i}
# => {2=>[2], 5=>[5], 4=>[4], 8=>[8]}
count_input = input.group_by(&:itself).map { |key, value| [key, value.count] }.to_h
count_input.select{ | k, v | v == 1 }.each_key { |key| puts key }
