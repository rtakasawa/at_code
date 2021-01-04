n,l = gets.chomp.split(" ").map(&:to_i)

s_list = []

n.times do |i|
  s = gets.chomp
  s_list.push(s)
end

puts s_list.sort.join
