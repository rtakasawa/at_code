input = 4.times.map{ gets.to_i }

a = input[0]
b = input[1]
c = input[2]
x = input[3]

pattern_count = 0

(0..a).each do |a_count|
  (0..b).each do |b_count|
    (0..c).each do |c_count|
      next if (a_count * 500 + b_count * 100 + c_count * 50) != x
      pattern_count += 1
    end
  end
end

puts pattern_count
