n,k = gets.chomp.split(" ").map(&:to_i)
d = gets.chomp.split(" ").map(&:to_i)
(n..10000).each do |num|
  # nを分割し、整数で配列に格納する
  num_slice = num.to_s.split('').map(&:to_i)
  # dとnum_sliceの重複する値の結果が[]の場合、numを出力
  if d & num_slice == []
    return puts num
  end
end