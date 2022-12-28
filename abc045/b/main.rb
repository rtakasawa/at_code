def fetch_top_string(array)
  return array.shift if array.dig(0)
  nil
end

a = gets.chomp.split("")
b = gets.chomp.split("")
c = gets.chomp.split("")

top_string = [a[0], b[0], c[0]].sort[0]
result = nil

loop do
  case top_string
  when 'a'
    top_string = fetch_top_string(a)
    break result = 'A' if top_string.nil?
  when 'b'
    top_string = fetch_top_string(b)
    break result = 'B' if top_string.nil?
  when 'c'
    top_string = fetch_top_string(c)
    break result = 'C' if top_string.nil?
  end
end

puts result
