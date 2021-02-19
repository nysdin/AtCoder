n, a, b = gets.split.map(&:to_i)
res = 0
1.upto(n) do |i|
  sum = 0
  j = i
  while (i >= 10)
    sum += i % 10
    i /= 10
  end
  sum += i
  if a <= sum && sum <= b
    res += j
  end
end
puts res
