a,b,c,d = gets.split(" ").map(&:to_i)

return puts 0 if a > d || b < c

numbers = [a,b,c,d].sort
puts numbers[2] - numbers[1]
