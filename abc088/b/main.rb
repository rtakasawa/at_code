n = gets.chomp.to_i
# a_listの数字を降順に並び替え
a_list = gets.chomp.split(" ").map(&:to_i).sort

alice = []
bob = []

loop do
  break if a_list.empty?
  alice.push(a_list.pop)
  break if a_list.empty?
  bob.push(a_list.pop)
end

puts alice.sum - bob.sum
