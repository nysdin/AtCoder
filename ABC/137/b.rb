k, x = gets.split.map(&:to_i)
min = x - k + 1
max = x + k - 1
min.upto(max) do |i|
  print i, " "
end
