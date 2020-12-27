side,vertical = gets.chomp.split(" ").map(&:to_i);
block =  (side - 1) * (vertical - 1)
puts block