a = gets.chomp.split("")
b = gets.chomp.split("")
c = gets.chomp.split("")

top_string = [a[0], b[0], c[0]].sort[0]
result = nil

loop do
  case top_string
  when 'a'
    if a.dig(0)
      top_string = a.shift
    else
      break result = 'A'
    end
  when 'b'
    if b.dig(0)
      top_string = b.shift
    else
      break result = 'B'
    end
  when 'c'
    if c.dig(0)
      top_string = c.shift
    else
      break result = 'C'
    end
  end
end

puts result
