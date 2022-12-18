def even_check(numbers)
  even_count = 0

  loop do
    result = numbers.all? {|num| num.even? }
    return even_count unless result

    even_count += 1
    numbers.map! {|num| num.div(2)}
  end
end

n = gets.chomp.to_i
numbers = gets.split(' ').map(&:to_i)
puts even_check(numbers)
