n = gets.to_i
btn_numbers = readlines.map(&:to_i)

count = 0
on_btn_number = 1

loop do
  count += 1
  on_btn_number = btn_numbers[on_btn_number - 1]
  return puts count if on_btn_number == 2
  return puts -1 if n == count
end
