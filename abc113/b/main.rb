n = gets.chomp.to_i
t,a = gets.chomp.split(" ").map(&:to_i)

elevations = []
elevations = gets.chomp.split(" ").map(&:to_i)

average_temperatures = []
elevations.each do |elevation|
  average_temperatures.push(t - elevation * 0.006)
end

result_temperature = average_temperatures.min_by{|average_temperature| (average_temperature-a).abs}

puts average_temperatures.index(result_temperature) + 1
