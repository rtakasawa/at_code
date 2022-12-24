input = gets.chomp.split("")
input.uniq.each {|item| return puts 'No' if input.count(item).odd? }
puts 'Yes'
