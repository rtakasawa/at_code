n,k = gets.chomp.split(" ").map(&:to_i)
d = gets.chomp.split(" ").map(&:to_i)

# 0〜9の数字の配列を作成し、dと引くことで、使える数字を算出
use_nums = (0..9).to_a - d

result = 0

(n..10000).each do |num|
  # nを分割し、整数で配列に格納する
  num_slice = num.to_s.split('').map(&:to_i)
  if use_nums - num_slice == use_nums
    binding.irb
    return puts num
  end
end

# puts result

# cost,items = gets.chomp.split(" ").map(&:to_i)
# not_like_numbers = gets.chomp.split(" ")

# # 使える数字を算出
# use_numbers = (0..9).to_a - not_like_numbers

# result = 0

# (items..10000).each do |item|
#   separeate_items = item.to_s.split('')
#   separeate_items.each do |separeate_item|
#     break if not_like_numbers.include?(separeate_item)
#     binding.irb
#   end
# end