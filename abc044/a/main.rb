line = readlines.map(&:to_i)

if line[0] >= line[1]
  p line[1] * line[2] + (line[0] - line[1]) * line[3]
else
  p line[0] * line[2]
end