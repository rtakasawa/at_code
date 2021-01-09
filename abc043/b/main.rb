s = gets.chomp.split("")
result = []
s.each do |i|
  if i == 'B' && result.size > 0
    result.pop
  elsif i != 'B'
    result.push(i.to_i)
  end
end

puts result.join