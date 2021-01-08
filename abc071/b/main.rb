s = gets.chomp.split("")
all_alphabet = 'abcdefghijklmnopqrstuvwxyz'.split("")

result = (all_alphabet - s).first

if result.nil?
  puts 'None'
else
  puts result
end