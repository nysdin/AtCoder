a, b, c, d = gets.split.map(&:to_i)
i = a * c
j = a * d
k = b * c
l = b * d
n = [i, j, k, l]
if (a <= 0 && 0 <= b) || (c <= 0 && 0 <= d)
  n.push(0)
end
puts n.max()
