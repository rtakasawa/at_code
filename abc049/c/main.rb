s = gets.chomp

t_words = %w[eraser erase dreamer dream]
t_words.each { |t_w| s.gsub!(t_w, '') }

if s.empty?
  puts "YES"
else
  puts "NO"
end
