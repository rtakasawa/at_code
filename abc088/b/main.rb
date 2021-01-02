n = gets.chomp.to_i
# a_listの数字を降順に並び替え
a_list = gets.chomp.split(" ").map(&:to_i).sort.reverse

alice = 0
bob = 0

for i in 0..n-1 do
  if i%2 == 0
    alice += a_list[i]
  else
    bob += a_list[i]
  end
end

puts alice - bob