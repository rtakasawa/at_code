n = gets.chomp.to_i

d_list = []

n.times do |num|
  d = gets.chomp.to_i
  d_list.push(d)
end

puts d_list.uniq.size
