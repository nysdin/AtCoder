n, Y = gets.split.map(&:to_i)
x = 0
y = 0
z = 0
x, m = Y / 10000, Y % 10000
y, m = m / 5000, m % 5000
z = m / 1000
judge = false
0.upto(x) do |i|
  0.upto(n-i) do |j|
    if 10000 * i + 5000 * j + 1000 * (n-i-j) == Y
      judge = true
      x = i
      y = j
      z = n-i-j
      break
    end
  end
  if judge
    break
  end
end

if judge
  print [x, y, z].join(" ")
else
  print [-1, -1, -1].join(" ")
end
