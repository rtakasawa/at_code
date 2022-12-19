n,a,b = gets.split(" ").map(&:to_i)

target_numbers = (1..n).select do |num|
  chars_num = num.to_s.chars.map(&:to_i)
  chars_num.sum >= a && chars_num.sum <= b
end

puts target_numbers.sum




