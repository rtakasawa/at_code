n,k = gets.chomp.split(" ").map(&:to_i)

result = []

while n>0
  result.push(n%k)
  n=n/k
end

puts result.size
