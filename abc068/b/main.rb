input = gets.chomp.to_i

divisible_count_list = []

(1..input).each do |n|
  count = 0
  num = n
  while num%2 == 0
    count += 1
    num = num/2
  end

  divisible_count_list.push(count)
end

result = divisible_count_list.index(divisible_count_list.max)+1

puts result
