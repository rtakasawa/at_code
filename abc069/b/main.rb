input_word = gets.chomp.split(//)

word_size = (input_word.size - 2).to_s

puts input_word.first + word_size + input_word.last
